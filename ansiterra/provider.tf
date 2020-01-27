// GOOGLE
provider "google" {
  credentials = file("ansiterra-terraform.json")
  project     = var.project
  region      = var.region
}

// GOOGLE-BETA
provider "google-beta" {
  credentials = file("ansiterra-terraform.json")
  project     = var.project
  region      = var.region
}