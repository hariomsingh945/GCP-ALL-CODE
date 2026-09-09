resource "google_compute_instance" "devops_vm" {
  name         = "devops-vm"
  zone         = "us-central1-a"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"
  }

  tags = ["http-server"]
}