terraform {
  backend "gcs" {
    credentials = "/home/kahar/devops-inf-gcp/upheld-setting-436613-s1-8a3224d9e026.json"
    bucket     = "inf-state-bucket"
    # Optional: use a specific path within the bucket
    prefix     = "terraform/state"  
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
}

#Module vm
module "vm" {
  source              = "../../modules/vm"
  project_id          = var.project_id
  region              = var.region
  zone                = var.zone
  instance_name       = var.instance_name
  machine_type        = var.machine_type
  image               = var.image
  network             = var.network
}

#Module gke
module "gke" {
  source              = "../../modules/gke"
  project_id          = var.project_id
  region              = var.region
  cluster_name        = var.cluster_name
  node_count          = var.node_count
  machine_type        = var.machine_type
  disk_size           = var.disk_size
}
