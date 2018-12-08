# terraform import google_container_cluster.cluster us-central1-a/andromeda

resource "google_container_cluster" "cluster" {

  name                = "${var.cluster_name}"
  zone                = "${var.zone}"
  network             = "cloudgenius"
  subnetwork          = "cg"
  min_master_version  = "${var.min_master_version}"

##  remove_default_node_pool = true

  master_authorized_networks_config = {
      cidr_blocks = [
        {
          cidr_block = "73.59.108.163/32",
          display_name = "Home"
        }
      ]
  }

  network_policy {
    provider = "CALICO"
    enabled = true
  }

  additional_zones = []
  lifecycle {
    ignore_changes = [ "node_count" ]
  }




  node_pool {
      name       = "default-pool"
      node_count = "${var.gcp_cluster_count}"
      autoscaling {
        min_node_count = "${var.cluster_min_nodes}"
        max_node_count = "${var.cluster_max_nodes}"
      }

      node_config {
        image_type = "COS"
        machine_type = "${var.cluster_machine_type}"
        preemptible = false
        disk_size_gb = "${var.cluster_disk_size_gb}"
        local_ssd_count = 1
        service_account = "default"
        oauth_scopes = "${var.cluster_oauth_scopes}"
        metadata {
          foo = "bar"
        }
        labels {
          foo = "bar"
        }
        tags = ["foo", "bar"]
      }
  }
  addons_config {
    http_load_balancing {
      disabled = false
    }
    horizontal_pod_autoscaling {
      disabled = false
    }
    kubernetes_dashboard {
      disabled = false
    }
    network_policy_config {
      disabled = false
    }
  }

  maintenance_policy {
    daily_maintenance_window {
      start_time = "03:00"
    }
  }

  enable_legacy_abac = false
  monitoring_service = "monitoring.googleapis.com"

  depends_on = ["google_compute_subnetwork.cg"]

}
