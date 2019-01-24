terraform {
  backend "gcs" {
    bucket = "smelukote-terraform-admin"
    prefix = "terraform/state"
  }
}
# Top-level folder under an organization.
resource "google_folder" "engineering" {
  display_name = "Engineering"
  parent       = "organizations/1098004547417"
}

resource "google_project" "example-dev" {
  name       = "Example dev Project"
  project_id = "example-dev-1234"
  folder_id  = "${google_folder.engineering.name}"
  billing_account = "019AA3-F19454-3C55A7"
}

resource "google_compute_instance" "instance_a" {
  name         = "dev-instance"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  tags = ["dev", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk
  scratch_disk {
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata {
    "dev" = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}




