
source "proxmox" "rhel8" {
  boot_command        = var.boot_command
  boot_wait           = var.boot_wait
  cores               = var.cpu
  disks {
    disk_size         = var.disksize
    storage_pool      = var.storage_pool
    storage_pool_type = var.storage_pool_type
    type              = var.type
  }
  http_directory           = var.http_directory
  insecure_skip_tls_verify = true
  iso_file                 = var.iso_file
  memory                   = var.memory
  network_adapters {
    bridge = var.bridge
  }
  node                   = var.proxmox_node
  password               = var.proxmox_password
  proxmox_url            = var.proxmox_url

  ssh_handshake_attempts = var.ssh_handshake_attempts
  ssh_password           = var.ssh_password
  ssh_timeout            = var.ssh_timeout
  ssh_username           = var.ssh_username
  template_description   = var.template_description
  template_name          = var.template_name
  username               = var.proxmox_username
}


build {
    sources = [
        "proxmox.rhel8",
    ]
    provisioner "shell" {
      execute_command = "echo '${var.ssh_password}' | {{.Vars}} sudo -S -E sh -eux '{{.Path}}'" 
      scripts = [
          "scripts/prep.sh"
      ]
    }
} 
