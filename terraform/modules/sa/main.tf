resource "yandex_iam_service_account" "this" {
    name = "k8s-sa"
}

resource "yandex_resourcemanager_folder_iam_member" "this" {
    folder_id = var.folder_id
    role      = "editor"
    member    = "serviceAccount:${yandex_iam_service_account.this.id}"
}