terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "8.1.0"
    }
  }
}

provider "google" {
  project = "hariom-0504-01-cbt"
  region  = "us-central1"
}