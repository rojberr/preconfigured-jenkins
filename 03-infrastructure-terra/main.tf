terraform {
  required_version = "~> 1.2.5"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {}

resource "digitalocean_droplet" "digitaloceanjenkins" {
  count     = 1
  image     = "ubuntu-18-04-x64"
  name      = "digitaloceanjenkins"
  region    = "fra1"
  size      = "s-1vcpu-1gb"
  user_data = file("digitaloceanjenkins_app.yaml")
}

# generate inventory file for Ansible
resource "local_file" "hosts_cfg" {
  content = templatefile("${path.module}/templates/ansible-hosts.tpl",
    {
      digitaloceandroplet_ip = digitalocean_droplet.digitaloceanjenkins.*.ipv4_address
    }
  )
  filename = "../infrastructure-ansible/ansible-hosts.cfg"
}
