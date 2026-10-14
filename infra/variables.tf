variable "project_id" {
  description = "ID du projet Google Cloud"
  type        = string
}

variable "region" {
  description = "Région GCP du cluster GKE"
  type        = string
  default     = "europe-west9"
}

variable "cluster_name" {
  description = "Nom du cluster GKE"
  type        = string
  default     = "demo-gke-autopilot"
}