terraform {
  required_version = ">= 0.12"
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
    #   version = "2.9.5"
    }
  }
}


resource "proxmox_vm_qemu" "shell2" {
  count       = 1
  name        = "shell${count.index + 1}"
  desc        = "shell2 description"
  target_node = var.target_node

  clone = var.cloudinit_template

  agent    = 1
  os_type  = "cloud-init"
  cores    = 1
  sockets  = "1"
  cpu      = "host"
  memory   = 1024
  scsihw   = "virtio-scsi-pci"
  bootdisk = "scsi0"

  disk {
    size     = "10G"
    type     = "scsi"
    storage  = "MX5001TB"
    iothread = 1
    ssd      = 1
    discard  = "on"
  }

  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  lifecycle {
    ignore_changes = [
      network,
    ]
  }

  # Cloud Init Settings
  ciuser = "ansible"
  ipconfig0 = "ip=192.168.1.2${count.index + 1}/24,gw=192.168.1.254"

  sshkeys = <<EOF
  ${var.ssh_key}
  EOF
}

resource "proxmox_vm_qemu" "shell3" {
  count       = 2
  name        = "shell${count.index + 1}"
  desc        = "shell3 description"
  target_node = var.target_node

  clone = var.cloudinit_template

  agent    = 1
  os_type  = "cloud-init"
  cores    = 1
  sockets  = "1"
  cpu      = "host"
  memory   = 1024
  scsihw   = "virtio-scsi-pci"
  bootdisk = "scsi0"

  disk {
    size         = "10G"
    type         = "scsi"
    storage      = "MX5001TB"
    iothread = 1
    ssd = 1
    discard = "on"
  }

  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  lifecycle {
    ignore_changes = [
      network,
    ]
  }

  # Cloud Init Settings
  ciuser = "ansible"
  ipconfig0 = "ip=192.168.1.2${count.index + 1}/24,gw=192.168.1.254"

  sshkeys = <<EOF
  ${var.ssh_key}
  EOF
}
