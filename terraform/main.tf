module "network" {
    source = "./modules/network"
    zone   = var.yc_zone
}

module "sa" {
    source    = "./modules/sa"
    folder_id = var.yc_folder_id
}

module "k8s_cluster" {
    source = "./modules/k8s_cluster"
    k8s_version  = var.k8s_version
    zone         = var.yc_zone
    network_id   = module.network.network_id
    subnet_id    = module.network.subnet_id
    sa_id        = module.sa.sa_id
}

module "k8s_node_group" {
    source              = "./modules/k8s_node_group"
    k8s_version         = var.k8s_version
    zone                = var.yc_zone
    cluster_id          = module.k8s_cluster.cluster_id
    subnet_id           = module.network.subnet_id
    node_count          = 2
    node_min            = 2
    node_max            = 5
    ssh_public_key_path = var.ssh_public_key_path
}