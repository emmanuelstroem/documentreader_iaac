// VPC
resource "google_compute_network" "vpc" {
  name                      = var.network
  auto_create_subnetworks   = false
  routing_mode              = var.routing_mode
  project                   = var.project
}