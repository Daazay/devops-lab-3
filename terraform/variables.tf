variable "yc_token" {
    type        = string
    sensitive   = true
    description = "Yandex Cloud OAuth token"
}

variable "yc_cloud_id" {
    type        = string
    sensitive   = true
    description = "Yandex Cloud ID"
}

variable "yc_folder_id" {
    type        = string
    sensitive   = true
    description = "Yandex Cloud Folder ID"
}

variable "yc_zone" {
    type        = string
    default     = "ru-central1-a"
    description = "Availability zone"
}

variable "k8s_version" {
    type    = string
    default = "1.30"
}

variable "ssh_public_key_path" {
    type    = string
}