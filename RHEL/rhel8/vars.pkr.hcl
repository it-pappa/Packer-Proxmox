### Proxmox Node ###
variable "proxmox_node" {}
variable "proxmox_url" {}
variable "proxmox_username" {}
variable "proxmox_password" {}

### iso Config ### 
variable "iso_file" {}
variable "boot_command" {}
variable "boot_wait" {}
variable "http_directory" {}

### Template ###
################
# VM Config #
variable "cpu" {}
variable "memory" {}
#Disks
variable "disk_size" {}
variable "storage_pool" {}
variable "storage_pool_type" {}
variable "type" {}
#Network
variable "bridge" {}
#Info
variable "template_description" {}
variable "template_name" {}

#ssh
variable "ssh_handshake_attempts" {}
variable "ssh_username" {}
variable "ssh_password" {}
variable "ssh_timeout" {}