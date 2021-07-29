terraform {
    backend "gcs" {
        bucket = "terraform-cicd-source-repo-state2"
        prefix = "terraform/state"
    }
}