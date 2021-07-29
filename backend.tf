# terraform {
#     backend "gcs" {
#         bucket = "terraform-cicd-source-repo-state2"
#         prefix = "terraform/state"
#     }
# }

terraform {
  backend "remote" {
    organization = "testing-sentinel"

    workspaces {
      name = "sentinel-testing"
    }
  }
}