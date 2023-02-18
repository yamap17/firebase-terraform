variable "env" {
  type        = string
  description = "project name"
}
variable "service_name" {
  type        = string
  description = "service name"
}
variable "function_name" {
  type        = string
  description = "function name"
}
variable "bucket_name" {
  type        = string
  description = "cloud functions archive bucket name"
}
variable "runtime" {
  type        = string
  description = "runtime langage"
}
variable "memory" {
  type        = number
  description = "cloud function memory"
  default     = 512
}
variable "timeout" {
  type        = number
  description = "zip cloud function script dir name"
  default     = 120
}