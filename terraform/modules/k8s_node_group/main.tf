resource "yandex_kubernetes_node_group" "this" {
  cluster_id = var.cluster_id
  name       = "k8s-node-group"
  version    = var.k8s_version

    instance_template {
        platform_id = "standard-v3"

        resources {
            cores  = 2
            memory = 2
            core_fraction = 20
        }

        boot_disk {
            size = 30
            type = "network-hdd"
        }


        network_interface {
            subnet_ids = [var.subnet_id]
            nat        = true
        }

        metadata = {
            ssh-keys = "${file(var.ssh_public_key_path)}"
        }
    }

    scale_policy {
        auto_scale {
            min     = var.node_min
            max     = var.node_max
            initial = var.node_count
        }
    }

    allocation_policy {
        location {
            zone = var.zone
        }
    }
}