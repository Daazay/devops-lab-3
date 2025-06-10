resource "yandex_kubernetes_cluster" "this" {
    name       = "k8s-cluster"
    network_id = var.network_id

    master {
        version = var.k8s_version
        zonal {
            zone      = var.zone
            subnet_id = var.subnet_id
        }
        public_ip = true
    }

    service_account_id      = var.sa_id
    node_service_account_id = var.sa_id
}