output "subnetwork_selflinks" {
    value = [
        for subnetwork in google_compute_subnetwork.subnetworks : subnetwork.self_link
    ]

    description      = "Subnetwork Selflink in modules/network/subnetworks/outputs.tf"
}