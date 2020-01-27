output "name" {
  value       = google_container_cluster.gke.name
  description = "The Name of the GKE Cluster created"
}

output "location" {
  value       = google_container_cluster.gke.location
  description = "Location of the GKE Cluster created"
}

output "region" {
  value       = google_container_cluster.gke.region
  description = "Region of the GKE Cluster created"
}

output "endpoint" {
  value       = google_container_cluster.gke.endpoint
  description = "Endpoint of the GKE Cluster created"
}
