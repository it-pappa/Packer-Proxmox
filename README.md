# Packer-Proxmox

Proxmox template builder with packer:

Documentation:
https://www.packer.io/docs/builders/proxmox

Tested on Packer: 1.7.6
Proxmox: 6.4

The proxmox builder is community supported and can be located here: 
https://github.com/hashicorp/packer-plugin-proxmox

Get Proxmox here:
https://www.proxmox.com/en/proxmox-ve

Tips: 
If used in cloud or in production, use SSH Keys instead of password when connecting with ssh. <br>
This template is a "ready to go" template to just create the image. Add provisioners, scripts, packages etc by yourself. 

When used with Proxmox, you can not change the resources afterwords with terraform. This is set in the Template file. 

When creating RHEL8 templates you will need a kickstarter file. Create it here: <br>
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/installation_guide/s1-kickstart2-file
