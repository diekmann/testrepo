# https://docs.spacelift.io/integrations/cloud-providers/gcp
provider "google" {}

resource "google_project" "my_project" {
  name       = "My Project"
  project_id = "my-project-id849y3iu221y"
  org_id     = "969273005403"
}

resource "google_sql_database_instance" "main" {
  name             = "main-instance"
  database_version = "POSTGRES_15"
  region           = "us-central1"

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-f1-micro"
  }
}
