module "project-services" {
  source        = "terraform-google-modules/project-factory/google//modules/project_services"
  version       = "4.0.0"

  project_id    = var.project

  activate_apis = var.api_list
  disable_services_on_destroy  = false
  disable_dependent_services    = false

}