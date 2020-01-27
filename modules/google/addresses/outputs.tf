output "ip_address" {
    value           = google_compute_global_address.global_ip.address
    description     = "IP Address from modules/network/loadbalancer/ip_address/outputs.tf"
}