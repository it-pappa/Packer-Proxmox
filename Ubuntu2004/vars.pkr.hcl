#Host info
variable "proxmox_url" {}
variable "proxmox_node" {}
variable "storage_pool" {}
variable "storage_pool_type" {}
variable "proxmox_username" {}
variable "proxmox_password" {}


#VM Info Ubuntu:
variable "http_directory" {}
variable "os_version" {}
variable "os_family" {}
variable "guest_os_type" {}
variable "cdrom_type" {}
variable "iso_file" {}
variable "ssh_username" {}
variable "ssh_key" {}
variable "boot_command" {}

#Vm Info
variable "disk_size" {}
variable "type" {}
variable "memory" {}
variable "vm_cores" {}
variable "network-bridge" {}

#Timeouts:
variable "ip_wait" {}
variable "ssh_timeout" {}
variable "ssh_port" {}
variable "ssh_handshakes" {}
variable "shutdown_timeout" {}
variable "ssh_handshake_attempts" {}
variable "boot_wait" {}