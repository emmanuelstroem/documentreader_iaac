resource "google_storage_bucket" "gcs_buckets" {
    count       = length(var.buckets)
    name        = var.buckets[count.index].name
    location    = var.buckets[count.index].location

    versioning {
        enabled     = true
    }
}