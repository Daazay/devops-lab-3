output "kubeconfig_command" {
    value = "yc managed-kubernetes cluster get-credentials --id ${module.k8s_cluster.cluster_id} --external"
}