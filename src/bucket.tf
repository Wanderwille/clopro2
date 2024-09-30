// Create SA
resource "yandex_iam_service_account" "sa-bucket" {
  name = "sa-backet"
}

// Grant permissions
resource "yandex_resourcemanager_cloud_iam_member" "bucket-editor" {
  cloud_id = var.yandex_cloud_id  
  #folder_id = var.yandex_folder_id
  role = "storage.editor"
  member = "serviceAccount:${yandex_iam_service_account.sa-bucket.id}"
  depends_on = [ yandex_iam_service_account.sa-bucket ]
}

// Create Static Access Keys
resource "yandex_iam_service_account_static_access_key" "sa-static-key" {
  service_account_id = yandex_iam_service_account.sa-bucket.id
  description = "static access key for bucket"
}

// Use keys to create bucket
resource "yandex_storage_bucket" "netology-bucket" {
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket = "clopro2-backet"
  acl = "public-read"
}

// Add picture to bucket
resource "yandex_storage_object" "object-1" {
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket = yandex_storage_bucket.netology-bucket.bucket
  key = "kotek.png"
  source = "media/kotek.png"
  acl = "public-read"
  depends_on = [ yandex_storage_bucket.netology-bucket ]
}