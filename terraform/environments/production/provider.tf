variable "project" {
  type        = string
  description = "GCP project"
}
variable "credential_file_path" {
  type        = string
  description = "credential file path"
}
variable "region" {
  type        = string
  description = "region"
  default     = "asia-northeast1"
}

provider "google" {
  credentials = file("${var.credential_file_path}")
  project     = var.project
  region      = var.region
}