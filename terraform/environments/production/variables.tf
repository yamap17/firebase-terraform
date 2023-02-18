variable "env" {
  type        = string
  description = "environment"
}
variable "service_name" {
  type        = string
  description = "cloud functions service name, use prefix"
}
variable "storage_class" {
  type        = string
  description = "storage class"
  default     = "COLDLINE"
}
variable "function_name" {
  type        = string
  description = "function name"
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