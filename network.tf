resource "google_compute_network" "cloudgenius" {
  name                    = "cloudgenius"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "cg" {
  name   = "cg"
  network = "cloudgenius"
  ip_cidr_range = "10.64.0.0/19"
  region = "us-west1"

  secondary_ip_range  = {
    range_name = "cg-pods"
    ip_cidr_range = "10.32.0.0/14"
  }

  secondary_ip_range  = {
    range_name = "cg-services"
    ip_cidr_range = "10.94.0.0/18"
  }

  depends_on = ["google_compute_network.cloudgenius"]

}
