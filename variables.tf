// General Variables

variable "linux_admin_username" {
  type        = "string"
  description = "User name for authentication to the Kubernetes linux agent virtual machines in the cluster."
  default = "cloudgenius"
}

variable "linux_admin_password" {
  type ="string"
  description = "The password for the Linux admin account."
  default = "ilikerandompasswords"
}

// GCP Variables
variable "gcp_cluster_count" {
  type = "string"
  description = "Count of cluster instances to start."
  default = 3
}

// GCP Variables
variable "region" {
  type = "string"
  description = "region."
  default = "us-west1"
}

// GCP Variables
variable "zone" {
  type = "string"
  description = "zone."
  default = "us-west1-a"
}

variable "cluster_name" {
  type = "string"
  description = "Cluster name for the GCP Cluster."
  default = "andromeda"
}


variable "cluster_machine_type" {
  type = "string"
  description = "Machine type"
  default = "n1-standard-1"
}

variable "cluster_auto_repair" {
  type = "string"
  description = "auto repair"
  default = "true"
}

variable "cluster_disk_size_gb" {
  type = "string"
  description = "size"
  default = "15"
}


variable "cluster_min_nodes" {
  type = "string"
  description = "min"
  default = "1"
}

variable "min_master_version" {
  type = "string"
  description = "version of Kubernetes"
  default = "1.11.6-gke.6"
}

variable "cluster_max_nodes" {
  type = "string"
  description = "max"
  default = "11"
}


variable "cluster_oauth_scopes" {
  type = "list"
  description = "oauth scope list"
  default = [ "https://www.googleapis.com/auth/cloud-platform" ]
}
