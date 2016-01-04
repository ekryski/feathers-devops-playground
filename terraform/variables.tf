variable "digitalocean_token" {}
variable "digitalocean_ssh_fingerprint" {}
variable "digitalocean_region" {
  default = "tor1"
}
variable "dnsimple_token" {}
variable "dnsimple_email" {}
variable "dnsimple_domain" {
  default = "feathersjs.com"
}
variable "slack_token" {}