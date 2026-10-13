output "cluster_name" {
  description = "Nom du cluster créé"
  value       = google_container_cluster.gke.name
}

output "region" {
  description = "Région du cluster"
  value       = google_container_cluster.gke.location
}