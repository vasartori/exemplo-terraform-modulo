provider "google" {
  credentials = var.service_account_file
  project     = var.project
  region      = var.region
}

