resource "google_project" "create_project" {
  name       = "test-project-id23456"
  project_id = "test-project-id23456"
  billing_account = "01C41B-0A7288-4C2013"
  deletion_policy = "DELETE"
}