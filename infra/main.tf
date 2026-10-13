provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_project_service" "apis" {
  for_each = toset([
    "compute.googleapis.com",
    "container.googleapis.com"
  ])

  project = var.project_id
  service = each.value

  disable_on_destroy = false
}

resource "google_container_cluster" "gke" {
  name     = var.cluster_name
  location = var.region

  enable_autopilot = true

  # Autorise Terraform à supprimer ce cluster lors du nettoyage.
  deletion_protection = false

  depends_on = [
    google_project_service.apis
  ]
}