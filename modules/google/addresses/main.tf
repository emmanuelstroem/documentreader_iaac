resource "google_compute_global_address" "global_ip" {
  name          = var.address_name
  address       = var.ip_address
}