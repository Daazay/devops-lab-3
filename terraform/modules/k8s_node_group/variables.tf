variable "cluster_id" {
    type = string
}

variable "k8s_version" {
    type = string
}

variable "subnet_id" {
    type = string
}

variable "zone" {
    type = string
}

variable "ssh_public_key_path" {
    type = string
}

variable "node_min" {
    type = number
}

variable "node_max" {
    type = number
}

variable "node_count" {
    type = number
}