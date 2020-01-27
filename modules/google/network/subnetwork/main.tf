
resource "google_compute_subnetwork" "subnetworks" {
    count      = length(var.subnetworks)

    name          = var.subnetworks[count.index].name
    ip_cidr_range = var.subnetworks[count.index].ip_cidr_range
    region        = var.subnetworks[count.index].region
    network       = var.network

    depends_on    = [var.network]
}
