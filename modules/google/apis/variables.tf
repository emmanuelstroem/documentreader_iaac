variable "project" {
  type = string
  default = "stackansr"
}

variable "api_list" {
    type        = list
    description = "APIs to Enable in GCP project"

    default     = [
        "iam.googleapis.com",
        "cloudresourcemanager.googleapis.com",
        "cloudbilling.googleapis.com",
        "clouddebugger.googleapis.com",
        "cloudtrace.googleapis.com",
        "compute.googleapis.com",
        "container.googleapis.com",
        "containerregistry.googleapis.com",
        "dns.googleapis.com",
        "iamcredentials.googleapis.com",
        "logging.googleapis.com",
        "monitoring.googleapis.com",
        "replicapool.googleapis.com",
        "replicapoolupdater.googleapis.com",
        "resourceviews.googleapis.com",
        "servicemanagement.googleapis.com",
        "servicenetworking.googleapis.com",
        "serviceusage.googleapis.com",
        "sqladmin.googleapis.com",
        "sql-component.googleapis.com",
        "storage-api.googleapis.com",
        "storage-component.googleapis.com",
        "cloudbuild.googleapis.com",
        "cloudfunctions.googleapis.com",
        "iap.googleapis.com",
        "cloudidentity.googleapis.com"
    ]
}