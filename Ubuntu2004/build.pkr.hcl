
  source "proxmox" "ubuntu2004" {
    boot_command            = var.boot_command
    boot_wait               = var.boot_wait
    cores                   = var.vm_cores
    disks {
      disk_size             = var.disk_size
      storage_pool          = var.storage_pool
      storage_pool_type     = var.storage_pool_type
      type                  = var.type
    }

    http_directory           = var.http_directory
    insecure_skip_tls_verify = true
    iso_file                 = var.iso_file
    memory                   = var.memory
    network_adapters {
      bridge = var.network-bridge
    }

    os_family              = var.os_family
    os_version             = var.os_version

    node                   = var.proxmox_node
    password               = var.proxmox_password
    proxmox_url            = var.proxmox_url
    ssh_handshake_attempts = var.ssh_handshake_attempts
    ssh_key                = var.ssh_key
    ssh_timeout            = var.ssh_timeout
    ssh_username           = var.ssh_username
    template_name          = "${var.os_family }-${ var.os_version }-{{ isotime \"2006-01-02\" }}"
    username               = var.proxmox_username
  }

  build {
    sources = ["proxmox.ubuntu2004"]

    provisioner "shell" {
      inline = ["while [ ! -f /var/lib/cloud/instance/boot-finished ]; do echo 'Waiting for cloud-init...'; sleep 1; done"]
    }

  }
