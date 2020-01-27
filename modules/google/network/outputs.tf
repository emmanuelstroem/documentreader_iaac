// Network Self Link
output "vpc_self_link" {
  value       = module.vpc.self_link
  description = "The URI of the VPC being created"
}

// Network Name
output "vpc_name" {
  value       = module.vpc.name
  description = "The Name of the VPC being created"
}

// Firewall SelfLink
// output "firewall_self_link" {
//   value       = module.firewall.allow_icmp_self_link
//   description = "The Name of the VPC being created"
// }