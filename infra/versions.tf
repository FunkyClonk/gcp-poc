terraform {
  required_version = ">= 1.5.0"

  backend "gcs" {
    prefix = "terraform/gke-terraform-site"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 6.0, < 8.0"
    }
  }
}