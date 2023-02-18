module "storage" {
  source        = "../../modules/cloudStorage"
  bucket_name   = "${var.service_name}-${var.env}"
  storage_class = var.storage_class
  region        = var.region
}

// TODO: 複数functionsを作成できるように対応
module "function" {
  source        = "../../modules/cloudFunctions"
  service_name  = var.service_name
  env           = var.env
  bucket_name   = module.storage.name
  function_name = var.function_name
  runtime       = var.runtime
  memory        = var.memory
  timeout       = var.timeout
}