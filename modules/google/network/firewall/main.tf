// FIREWALL
resource "google_compute_firewall" "allow-icmp" {
  name    = "allow-80-443-20022"
  network = var.network

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "443", "20022", "1000-2000"]
  }

}

// Allow Network HealthCheck
resource "google_compute_firewall" "fw-allow-network-lb-health-checks" {
  name    = "fw-allow-network-lb-health-checks"
  network = var.network

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = [
    "35.191.0.0/16",
    "209.85.152.0/22",
    "209.85.204.0/22"
  ]

  direction = "INGRESS"

  target_tags = ["http-server", "https-server", "stackanswers"]
}

// Allow Internal HealthCheck Probe
resource "google_compute_firewall" "fw-allow-health-checks" {
  name    = "fw-allow-health-checks"
  network = var.network

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = [
    "35.191.0.0/16",
    "130.211.0.0/22",
  ]

  direction = "INGRESS"

  target_tags = ["http-server", "https-server", "stackanswers"]
}

// Allow SSH Tunnel
resource "google_compute_firewall" "fw-allow-ssh-tunnel" {
  name    = "fw-allow-ssh-tunnel"
  network = var.network

  allow {
    protocol = "tcp"
    // ports    = ["80", "443"]
  }

  source_ranges = [
    "35.235.240.0/20",
  ]

  direction = "INGRESS"

  target_tags = ["http-server", "https-server", "stackanswers"]
}