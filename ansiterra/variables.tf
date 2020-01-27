// Project
variable "project" {
  type        = string
  description = "Project ID in ./ansiterra"
  default     = "ansiterra"
}

// Region
variable "region" {
  type        = string
  description = "Region Name in ./ansiterra"
  default     = "europe-west3"
}

// Zone
variable "zone" {
  type        = string
  description = "Zone Name in ./ansiterra"
  default     = "europe-west3-a"
}

variable "zones" {
  type        = list
  description = "Zones Name in ./ansiterra"
  default     = [
    "europe-west3-a",
    "europe-west3-b",
    "europe-west3-c"
  ]
}

// Network
variable "network" {
  type        = string
  description = "Network Name in ./ansiterra"
  default     = "mainvpc"
}

// Router List
variable "router_list" {
  type        = list
  description = "Router List in ./ansiterra"
  default     = [
    {
        name        = "europe-west3-router"
        region      = "europe-west3"
        nat_name    = "europe-west3-nat"
    }
  ]
}
