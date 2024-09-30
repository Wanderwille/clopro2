# Заменить на ID своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_cloud_id" {
  default = "b1gb93lpnjqmrui5gm09"
}

# Заменить на Folder своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_folder_id" {
  default = "b1gvrb386rq9a96c5km4"
}

# Заменить на ID своего образа
# ID можно узнать с помощью команды yc compute image list
variable "ubuntu" {
  default = "fd8hglaneh113l00tv83"
}

variable "zone" {
  default = "ru-central1-a"  
}

variable "lamp-instance-image-id" {
  default = "fd827b91d99psvq5fjit"
  type        = string
}

variable "yandex_cloud_auth" {
  default = "tuta pusto))"
  sensitive = true
}

variable "metadata_ssh" {
  description = "metadata for all vms"
  type        = map(string)
  default     = {
    serial-port-enable = "1"
    ssh-keys          = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILrmmjE2SF5JJsS9GChvmOkBc0uHHkuhHoG9b8zk1hZ0 root@User"
  }
}

variable "ssh_username" {
  description = "ubuntu"
  type        = string
}

variable "ssh_private_key_path" {
  description = "ssh path"
  type        = string
  default     = "~/.ssh/id_rsa" 
}