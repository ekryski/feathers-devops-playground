# Configure the DNSimple provider
provider "dnsimple" {
    token = "${var.dnsimple_token}"
    email = "${var.dnsimple_email}"
}

# Create A records
resource "dnsimple_record" "feathers-demo" {
  domain = "${var.dnsimple_domain}"
  name = "demo"
  value = "${digitalocean_droplet.feathers.ipv4_address}"
  type = "A"
  ttl = 3600
}

resource "dnsimple_record" "feathers-todo" {
  domain = "${var.dnsimple_domain}"
  name = "todos"
  value = "${digitalocean_droplet.feathers.ipv4_address}"
  type = "A"
  ttl = 3600
}

resource "dnsimple_record" "feathers-slack" {
  domain = "${var.dnsimple_domain}"
  name = "slack"
  value = "${digitalocean_droplet.feathers.ipv4_address}"
  type = "A"
  ttl = 3600
}