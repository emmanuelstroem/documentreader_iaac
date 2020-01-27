variable "network" {
    type        = string
    description = "Network Name in modules/network/subnetworks"
}

variable "subnetworks" {
  type        = list
  description = "Subnetworks List of maps"

  default = [
    {
        name          = "asia-east1-subnetwork"
        ip_cidr_range = "10.0.0.0/24"
        region        = "asia-east1"
    },
    {
        name          = "asia-east2-subnetwork"
        ip_cidr_range = "10.0.1.0/24"
        region        = "asia-east2"
    },
    {
        name          = "asia-northeast1-subnetwork"
        ip_cidr_range = "10.0.2.0/24"
        region        = "asia-northeast1"
    },
    {
        name          = "asia-northeast2-subnetwork"
        ip_cidr_range = "10.0.3.0/24"
        region        = "asia-northeast2"
    },
    {
        name          = "asia-south1-subnetwork"
        ip_cidr_range = "10.0.4.0/24"
        region        = "asia-south1"
    },
    {
        name          = "asia-southeast1-subnetwork"
        ip_cidr_range = "10.0.5.0/24"
        region        = "asia-southeast1"
    },
    {
        name          = "australia-southeast1-subnetwork"
        ip_cidr_range = "10.0.6.0/24"
        region        = "australia-southeast1"
    },
    {
        name          = "europe-north1-subnetwork"
        ip_cidr_range = "10.0.7.0/24"
        region        = "europe-north1"
    },
    {
        name          = "europe-west1-subnetwork"
        ip_cidr_range = "10.0.8.0/24"
        region        = "europe-west1"
    },
    {
        name          = "europe-west2-subnetwork"
        ip_cidr_range = "10.0.9.0/24"
        region        = "europe-west2"
    },
    {
        name          = "europe-west3-subnetwork"
        ip_cidr_range = "10.0.10.0/24"
        region        = "europe-west3"
    },
    {
        name          = "europe-west4-subnetwork"
        ip_cidr_range = "10.0.11.0/24"
        region        = "europe-west4"
    },
    {
        name          = "europe-west6-subnetwork"
        ip_cidr_range = "10.0.12.0/24"
        region        = "europe-west6"
    },
    {
        name          = "northamerica-northeast1-subnetwork"
        ip_cidr_range = "10.0.13.0/24"
        region        = "northamerica-northeast1"
    },
    {
        name          = "southamerica-east1-subnetwork"
        ip_cidr_range = "10.0.14.0/24"
        region        = "southamerica-east1"
    },
    {
        name          = "us-central1-subnetwork"
        ip_cidr_range = "10.0.15.0/24"
        region        = "us-central1"
    },
    {
        name          = "us-east1-subnetwork"
        ip_cidr_range = "10.0.16.0/24"
        region        = "us-east1"
    },
    {
        name          = "us-east4-subnetwork"
        ip_cidr_range = "10.0.17.0/24"
        region        = "us-east4"
    },
    {
        name          = "us-west1-subnetwork"
        ip_cidr_range = "10.0.18.0/24"
        region        = "us-west1"
    },
    {
        name          = "us-west2-subnetwork"
        ip_cidr_range = "10.0.19.0/24"
        region        = "us-west2"
    },
  ]
}