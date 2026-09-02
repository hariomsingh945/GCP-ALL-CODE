resource "google_project" "create_project" {
  name       = "test-project-id23"
  project_id = "test-project-id23"
  billing_account = "01C41B-0A7288-4C2013"
  deletion_policy = "DELETE"
}