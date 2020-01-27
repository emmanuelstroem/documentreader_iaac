resource "google_cloudbuild_trigger" "cloudbuild-branch-trigger" {
  name          = var.trigger_name
  description   = var.description

  trigger_template {
    repo_name   = var.repo_name
    branch_name = var.branch_name
  }

  filename = var.cloudbuild_filename
}