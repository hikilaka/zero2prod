provider "google" {
  project = "zero2prod-344606"
  region  = var.location
}

data "terraform_remote_state" "remote_state" {
  backend = "gcs"
  config  = {
    bucket = "zero2prod-344606-tf-state"
    prefix = "tf-states/${var.environment}"
  }
}

resource "google_storage_bucket" "bucket" {
  name     = "zero2prod-344606-test-bucket"
  location = upper(var.location)
}
