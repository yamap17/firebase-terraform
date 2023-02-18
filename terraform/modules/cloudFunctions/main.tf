data "archive_file" "function_archive" {
  type        = "zip"
  source_dir  = "../../../cloudFunctions/${var.function_name}"
  output_path = "../../../cloudFunctions/${var.function_name}.zip"
  excludes    = ["env.yml"]
}

resource "google_storage_bucket_object" "packages" {
  name   = "packages/functions.${data.archive_file.function_archive.output_md5}.zip"
  bucket = var.bucket_name
  source = data.archive_file.function_archive.output_path
}

resource "google_cloudfunctions_function" "function" {
  name    = "${var.service_name}-${var.function_name}-${var.env}"
  runtime = var.runtime

  available_memory_mb   = var.memory
  source_archive_bucket = google_storage_bucket_object.packages.bucket
  source_archive_object = google_storage_bucket_object.packages.name
  timeout               = var.timeout
  trigger_http          = true
  entry_point           = "main"

  environment_variables = yamldecode(file("../../../cloudFunctions/${var.function_name}/env.yml"))
}

resource "google_cloudfunctions_function_iam_member" "invoker" {
  project        = google_cloudfunctions_function.function.project
  region         = google_cloudfunctions_function.function.region
  cloud_function = google_cloudfunctions_function.function.name

  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"
}
