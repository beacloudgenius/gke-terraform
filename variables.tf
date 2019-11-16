// General Variables

variable "gcp_cluster_count" {
  type        = string
  description = "Count of cluster instances to start."
  default     = 3
}

variable "region" {
  type        = string
  description = "region."
  default     = "us-west1"
}

variable "location" {
  type        = string
  description = "location."
  default     = "us-west1-a"
}

variable "cluster_name" {
  type        = string
  description = "Cluster name for the GKE Cluster."
  default     = "andromeda"
}

variable "cluster_machine_type" {
  type        = string
  description = "Machine type"
  default     = "n1-standard-2"
}

variable "cluster_auto_repair" {
  type        = string
  description = "auto repair"
  default     = "true"
}

variable "cluster_disk_size_gb" {
  type        = string
  description = "size"
  default     = "100"
}

variable "cluster_min_nodes" {
  type        = string
  description = "min"
  default     = "1"
}

variable "release_channel" {
  type        = string
  description = "Kubernetes Release Channel for GKE"
}

variable "network" {
  type        = string
  description = "Name of network"
}

variable "subnetwork" {
  type        = string
  description = "Name of subnetwork"
}

variable "cluster_max_nodes" {
  type        = string
  description = "max"
  default     = "11"
}

variable "cluster_oauth_scopes" {
  type        = list(string)
  description = "oauth scope list"
  default     = ["https://www.googleapis.com/auth/cloud-platform"]
}

variable "bucket_name" {
  description = "The name of the S3 bucket. Must be globally unique."
  type        = string
  default     = "cgterraform"
}

variable "table_name" {
  description = "The name of the DynamoDB table. Must be unique in this AWS account."
  type        = string
  default     = "cgterraform"
}
