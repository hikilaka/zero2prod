locals {
  project_id     = "zero2prod-344606"
  project_number = "419687447883"
}

provider "google" {
  project = local.project_id
  region  = var.location
}

data "terraform_remote_state" "remote_state" {
  backend = "gcs"
  config  = {
    bucket = "${local.project_id}-tf-state"
    prefix = "tf-states/${var.environment}"
  }
}

resource "google_storage_bucket" "bucket" {
  name     = "${local.project_id}-${var.environment}-bucket"
  location = upper(var.location)
}

resource "google_storage_bucket_access_control" "bucket_access_control" {
  bucket = google_storage_bucket.bucket.name
  role   = "READER"
  entity = "allUsers"
}
