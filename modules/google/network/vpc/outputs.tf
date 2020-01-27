// Network Self Link
output "self_link" {
  value       = google_compute_network.vpc.self_link
  description = "The URI of the VPC being created"
}

// Network Name
output "name" {
  value       = google_compute_network.vpc.name
  description = "The Name of the VPC being created"
}