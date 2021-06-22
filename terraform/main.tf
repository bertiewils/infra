terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      # version = "~> 3.46.0"
    }
  }

  required_version = ">= 0.14.9"
}

variable "hcloud_token" {}

provider "hcloud" {
  token = var.hcloud_token
}

resource "hcloud_firewall" "general" {
  name = "General"
  rule {
    direction = "in"
    protocol  = "icmp"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }
}

resource "hcloud_firewall" "ssh-home" {
  name = "SSH Home"
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "22"
    source_ips = [
      "217.155.26.60/32"
    ]
  }
}

resource "hcloud_firewall" "webapp-public" {
  name = "WebApp Public"
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "80"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "443"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }
}

resource "hcloud_server" "docker-htz" {
  name        = "docker-htz"
  image       = "debian-10"
  server_type = "cx11"
  location    = "nbg1"
  backups = false
  ssh_keys = [
    "bert@Berties-MBP.home",
    "bert@shell"
  ]
}

