output "buckets" {
    value       = [
        for bucket in google_storage_bucket.gcs_buckets : bucket.url
    ]

    description = "URLs for all the Buckets created"
}