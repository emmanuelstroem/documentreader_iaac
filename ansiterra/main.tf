// APIs
module "apis" {
    source          = "../modules/google/apis"
    project         = var.project
}

// VPC
module "network" {
    source          = "../modules/google/network"
    project         = var.project
    network         = var.network
    routers         = var.router_list
}

module "gke-spinnaker" {
    source              = "../modules/google/kubernetes"
    project             = var.project
    network             = var.network
    region              = var.region
    zone                = "europe-west3-a"
    zones               = ["europe-west3-a", "europe-west3-b", "europe-west3-c"]
    subnetwork          = "${ var.region }-subnetwork"
    name                = "spinnaker-cluster"
    initial_node_count  = 2
    gke_version         = "1.14.10-gke.17"
    machine_type        = "n1-standard-2"

    tags                = ["spinnaker", "pipeplines", "prometheus"]

    labels              = {
        app = "spinnaker"
    }

    service_account = "terraform@ansiterra.iam.gserviceaccount.com"
}

module "gke-documentreader" {
    source              = "../modules/google/kubernetes"
    project             = var.project
    network             = var.network
    region              = var.region
    zone                = "europe-west3-a"
    zones               = ["europe-west3-a", "europe-west3-b", "europe-west3-c"]
    subnetwork          = "${ var.region }-subnetwork"
    name                = "documentreader-cluster"
    initial_node_count  = 2
    gke_version         = "1.14.10-gke.17"
    machine_type        = "n1-standard-1"

    tags                = ["docummentreader", "dummy-pdf-png", "golang", "python"]

    labels              = {
        app1 = "documentreader"
        app2 = "dummy-pdf-png"
    }

    service_account = "terraform@ansiterra.iam.gserviceaccount.com"
}

module "gcs" {
    source          = "../modules/google/gcs"
    buckets         = [
        {
            name        = "ansiterra-spinnaker"
            location    = "EU"
        }
    ]
}

module "documentreader-cloudbuild" {
    source               = "../modules/google/cloudbuild"
    trigger_name         = "frontend-branch-trigger"
    description          = "Reader App: Push to Master"
    repo_name            = "github_emmanuelstroem_documentreader"
    branch_name          = "master"
    cloudbuild_filename  = ".cloudbuild/documentreader.yaml"
}

module "git-lfs-cloudbuild" {
    source               = "../modules/google/cloudbuild"
    description          = "Git-LFS: Push to Master"
    trigger_name         = "git-lfs-trigger"
    repo_name            = "github_emmanuelstroem_documentreader"
    branch_name          = "master"
    cloudbuild_filename  = ".cloudbuild/git-lfs.yaml"
}

module "dummy-cloudbuild" {
    source               = "../modules/google/cloudbuild"
    trigger_name         = "backend-branch-trigger"
    description          = "Dummy-PDF-or-PNG: Push to Master"
    repo_name            = "github_emmanuelstroem_documentreader"
    branch_name          = "master"
    cloudbuild_filename  = ".cloudbuild/dummy.yaml"
}

module "spinnaker-ip" {
    source              = "../modules/google/addresses"
    address_name        = "spinnaker-ingress"
}

module "prometheus-ip" {
    source              = "../modules/google/addresses"
    address_name        = "prometheus-ingress"
}

module "documentreader-ip" {
    source              = "../modules/google/addresses"
    address_name        = "reader-ingress"
}