variable "project" {
  type        = string
  description = "Project Name in ./modules/google/gke"
}

variable "network" {
  type        = string
  description = "Network Name in ./modules/google/gke"
}

variable "region" {
  type        = string
  description = "Region Name in ./modules/google/gke"
}

variable "subnetwork" {
  type        = string
  description = "Subnetwork Name in ./modules/google/gke"
}

variable "zones" {
  type        = list
  description = "Zones Name in ./modules/google/gke"
}

variable "zone" {
  type        = string
  description = "Zone Name in ./modules/google/gke"
}

variable "name" {
  type        = string
  description = "Cluster Name in ./modules/google/gke"
}

variable "service_account" {
  type        = string
  description = "SA Name in ./modules/google/gke"
}

variable "initial_node_count" {
  type        = number
  description = "Initial node count in ./modules/google/gke"
}

variable "tags" {
  type        = list
  description = "List of Tags in ./modules/google/gke"
}

variable "labels" {
  type        = any
  description = "Labels in ./modules/google/gke"
}

variable "gke_version" {
  type        = string
  description = "Version of Kubernetes in ./modules/google/gke"
}

variable "machine_type" {
  type        = string
  description = "Node Machine Types in ./modules/google/gke"
}