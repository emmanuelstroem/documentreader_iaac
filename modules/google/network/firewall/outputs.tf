// Network Name
output "allow_icmp_self_link" {
  value       = google_compute_firewall.allow-icmp.self_link
  description = "Firewall ICMP SelfLink in modules/network/firewall"
}