variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "region" {
  description = "The GCP region where the GKE will be created."
  type        = string
}

variable "cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the default node pool."
  type        = number
}

variable "machine_type" {
  description = "The machine type for the nodes."
  type        = string
}

variable "disk_size" {
  description = "The size of the disk attached to each node."
  type        = number
  default     = 100
}
