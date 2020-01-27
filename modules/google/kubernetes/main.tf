resource "google_container_cluster" "gke" {
  name                        = var.name
  location                    = var.zone
  initial_node_count          = var.initial_node_count
  network                     = var.network
  subnetwork                  = var.subnetwork
  node_version                = var.gke_version
  min_master_version          = var.gke_version

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }

  node_config {
    machine_type = var.machine_type

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/devstorage.read_only"
    ]

    metadata = {
      disable-legacy-endpoints = "true"
    }

    labels = var.labels

    tags = var.tags
  }

  timeouts {
    create = "30m"
    update = "40m"
  }
}