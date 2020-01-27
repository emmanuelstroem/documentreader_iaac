variable "project" {
  type = string
  description = "Project ID in modules/network"
}

variable "network" {
  type  = string
  description = "Network Name in modules/network"
}

variable "routers" {
    type        = list
    description = "Routers list on modules/google/network/variables.tf"
    default     = []
}