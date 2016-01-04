# Configure the Digital Ocean provider
provider "digitalocean" {
  token = "${var.digitalocean_token}"
}

# Create a single droplet
resource "digitalocean_droplet" "feathers" {
  image = "docker"
  name = "feathers"
  region = "${var.digitalocean_region}"
  size = "512mb"
  # size = "1gb"
  ssh_keys = ["${var.digitalocean_ssh_fingerprint}"]

  connection {
    user = "root"
    private_key = "${file("/Users/eric/.ssh/id_rsa")}"
  }

  # Configure Docker containers
  provisioner "remote-exec" {
    inline = [
      "docker run --name nginx-proxy -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy",
      "docker run --name slackin -d -p 3000:3000 -e VIRTUAL_HOST=slack.feathersjs.com -e SLACK_ORG=feathersjs -e SLACK_TOKEN=${var.slack_token} chk1/slackin",
      "docker run --name feathers-demo -d -p 8080:8080 -e PORT=8080 -e VIRTUAL_HOST=demo.feathersjs.com ekryski/feathers-demo"
    ]
  }
}

# Define our outputs to be shown once provisioning is complete
output "ipv4_address" {
  value = "${digitalocean_droplet.feathers.ipv4_address}"
}

output "ipv4_address_private" {
  value = "${digitalocean_droplet.feathers.ipv4_address_private}"
}

output "ipv6_address" {
  value = "${digitalocean_droplet.feathers.ipv6_address}"
}

output "ipv6_address_private" {
  value = "${digitalocean_droplet.feathers.ipv6_address_private}"
}

output "locked" {
  value = "${digitalocean_droplet.feathers.locked}"
}

output "status" {
  value = "${digitalocean_droplet.feathers.status}"
}