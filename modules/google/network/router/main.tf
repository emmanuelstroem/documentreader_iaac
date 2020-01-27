// cloud-router
resource "google_compute_router" "cloud-routers"{
    count           = length(var.routers)

    name            = var.routers[count.index].name
    region          = var.routers[count.index].region
    network         = var.network

    bgp {
        asn = 64514
    }

}

// clout-nat
resource "google_compute_router_nat" "cloud-nat" {
    count                              = length(var.routers)
    name                               = var.routers[count.index].nat_name
    router                             = var.routers[count.index].name
    region                             = var.routers[count.index].region
    nat_ip_allocate_option             = "AUTO_ONLY"
    source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

    log_config {
      enable = true
      filter = "ERRORS_ONLY"
    }

    depends_on = [google_compute_router.cloud-routers]
}