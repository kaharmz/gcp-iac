variable "project_id" {
  description = "The project ID for the Google Cloud project"
  type        = string
}

variable "region" {
  description = "The GCP region where the VM will be created."
  type        = string
}

variable "zone" {
  description = "The GCP zone where the VM will be created."
  type        = string
}

variable "instance_name" {
  description = "The name of the VM instance."
  type        = string
}

variable "machine_type" {
  description = "The machine type of the VM instance."
  type        = string
}

variable "image" {
  description = "The image used for the VM boot disk."
  type        = string
}

variable "network" {
  description = "The network to attach the instance to."
  type        = string
}
