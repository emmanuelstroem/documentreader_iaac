variable "network" {
  type        = string
  description = "Network Name in modules/network/router"
}

variable "routers" {
    type        = list
    description = "Routers list in modules/google/network/router"
}