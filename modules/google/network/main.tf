// Network
module "vpc" {
    source          = "./vpc"
    project         = var.project
    network         = var.network
    routing_mode    = "GLOBAL"
}

// Subnetworks
module "subnetworks" {
    source          = "./subnetwork"
    network         = module.vpc.self_link
}

// Routers and Nats
module "router" {
    source          = "./router"
    network         = module.vpc.name
    routers         = var.routers
}

// Firewalls
// module "firewall" {
//     source          = "./firewall"
//     network         = module.vpc.name
// }