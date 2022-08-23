### Proxmox Node ###
proxmox_node                = "node"
proxmox_url                 = "https://192.1.1.1:8006/api2/json"
proxmox_username            = "username@pam"
proxmox_password            = "password"

### iso Config ### 
iso_file            = "local:iso/rhel-8.5-x86_64-dvd.iso"
  boot_command      = ["<esc><wait>", "vmlinuz initrd=initrd.img inst.geoloc=0 rd.driver.blacklist=dm-multipath net.ifnames=0 biosdevname=0 ", "inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/kickstart.cfg", "<enter>"]
boot_wait           = "3s"
http_directory      = "http"

### Template ###
################
# VM Config #
cpu         = 2
cpu_type    = "host"
memory      = 10240
#Disks
disk_size               = "30"
storage_pool            = "pool-name"
storage_pool_type       = "lvm"
type                    = "virtio"
#Network
bridge                  = "vmbr0"
#Info
template_description    = "Rhel 8.5"
template_name           = "Template-rhel8.5"

#ssh
ssh_handshake_attempts  = "100"
ssh_username            = "username"
ssh_password            = "password"
ssh_timeout             = "40m"