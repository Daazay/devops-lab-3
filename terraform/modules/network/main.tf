resource "yandex_vpc_network" "this" {
    name = "k8s-network"
}

resource "yandex_vpc_subnet" "this" {
    name           = "k8s-subnet"
    zone           = var.zone
    network_id     = yandex_vpc_network.this.id
    v4_cidr_blocks = ["10.10.0.0/16"]
}