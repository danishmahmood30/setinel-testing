resource "google_compute_instance" "vm_instance" {
  zone         = "us-west1-a"
  name         = "compute-instance1"
  machine_type = "f1-micro"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  #test
  network_interface {
    network = "default"

    access_config {
      # Include this section to give the VM an external ip address
    }
  }

  # Apply the firewall rule to allow external IPs to access this instance
  tags = ["http-server"]
}