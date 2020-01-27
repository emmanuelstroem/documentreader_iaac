variable "project" {
  type = string
  description = "Project ID in modules/network/vpc"
}

variable "network" {
  type = string
  description = "Network Name in modules/network/vpc"
}

variable "routing_mode" {
  type = string
  default = "GLOBAL"
  description = "Router Mode in modules/network/vpc"
}