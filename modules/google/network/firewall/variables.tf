variable "network" {
  type        = string
  description = "Network Name in Firewall"
}

variable "routers" {
    type    = list
    default = [
        {
            name        = "europe-west3-router"
            region      = "europe-west3"
            nat_name    = "europe-west3-nat"
        },
        {
            name        = "us-east4-router"
            region      = "us-east4"
            nat_name    = "us-east4-nat"
        }
    ]
}