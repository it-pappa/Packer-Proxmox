# Host info
proxmox_url             = "192.168.1.1:8006/api2/json"
proxmox_node            = "nodename"
storage_pool            = "local-lvm"
storage_pool_type       = "lvm"
proxmox_username        = "username@pam"
proxmox_password        = "password"


# VM Info Ubuntu:
http_directory  = "http"
os_version      = "20.04"
os_family       = "ubuntu"
guest_os_type   = "ubuntu64Guest"
cdrom_type      = "sata"
iso_file        = "local:iso/ubuntu-20.04.4-live-server-amd64.iso"
ssh_username    = "username"
ssh_key         = "path-to-key"
boot_command = [
    "<esc><esc><esc>",
    "<enter><wait>",
    "/casper/vmlinuz ",
    "initrd=/casper/initrd ",
    "autoinstall ",
    "<enter>"
]

# Vm Info
disk_size               = "15G"
type                    = "scsi"
memory                  = 4096
vm_cores                = 1
network-bridge          = "vmbr0"

# Timeouts:
ip_wait                 = "20m"
ssh_timeout             = "40m"
ssh_port                = "22"
ssh_handshakes          = "40"
shutdown_timeout        = "15m"
ssh_handshake_attempts  = "100"
boot_wait               = "3s"