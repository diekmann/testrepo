# https://docs.spacelift.io/integrations/cloud-providers/gcp
provider "google" {}

resource "google_project" "my_project" {
  name       = "My Project"
  project_id = "my-project-id849y3iu221y"
  org_id     = "969273005403"
}
