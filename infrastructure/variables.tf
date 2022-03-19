variable "environment" {
  description = "Name of the current environment"
  type        = string
  nullable    = false
}

variable "location" {
  description = "Google Cloud location"
  type        = string
  nullable    = false
  default     = "us-central1"
}
