resource "google_container_cluster" "gke_cluster" {
  name               = var.cluster_name
  location           = var.region
  remove_default_node_pool = true
  
  workload_identity_config {
    workload_pool = "${var.project_id}.svc.id.goog"
  }

  node_pool {
    name       = "default-pool"
    node_count = var.node_count

    management {
      auto_upgrade = true
      auto_repair  = true
    }

    node_config {
      machine_type = var.machine_type

      oauth_scopes = [
        "https://www.googleapis.com/auth/cloud-platform"
      ]

      # You can specify disk size and image type here
      disk_size_gb = var.disk_size
    }

    autoscaling {
      min_node_count = 1  
      max_node_count = 3  
    }
  }

  # Add network and security settings if needed
}
