variable "trigger_name" {
    type            = string
    description     = "Trigger Name in modules/google/auxiliary/variables.tf"
}

variable "repo_name" {
    type            = string
    description     = "Repo Name in modules/google/auxiliary/variables.tf"
}

variable "branch_name" {
    type            = string
    description     = "Branch Name in modules/google/auxiliary/variables.tf"
}

variable "cloudbuild_filename" {
    type            = string
    description     = "Trigger File Name in modules/google/auxiliary/variables.tf"
}

variable "description" {
    type            = string
    description     = "Trigger Description in modules/google/auxiliary/variables.tf"
}