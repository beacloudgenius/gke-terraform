resource "google_compute_firewall" "default" {
  name    = "allow-ping-ssh"
  network = var.network

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  depends_on = [google_compute_network.cloudgenius]

}
