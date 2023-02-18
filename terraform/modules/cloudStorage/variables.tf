variable "bucket_name" {
  type        = string
  description = "cloud functions archive bucket name"
}
variable "storage_class" {
  type        = string
  description = "storage class, STANDARD, COLDLINE"
  default     = "STANDARD"
}
variable "region" {
  type        = string
  description = "region"
  default     = "asia-northeast1"
}