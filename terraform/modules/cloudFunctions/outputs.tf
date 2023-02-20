output "function_got_url" {
  value = google_cloudfunctions_function.function.https_trigger_url
}