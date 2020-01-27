variable "address_name" {
    type            = string
    description     = "Address Name in modules/google/auxiliary/variables.tf"
}

variable "ip_address" {
    type            = string
    description     = "IP Address Name in modules/google/auxiliary/variables.tf"
    default         = ""
}
