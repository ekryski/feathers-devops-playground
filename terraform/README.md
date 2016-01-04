# Terraform Playground

This provisions our infrastructure on Digital Ocean for Feathers and sets up the DNS records. Currently it sets up:

- [Slackin](https://github.com/rauchg/slackin)
- Our [Todo demo app](https://github.com/feathersjs/feathers-demo)
- [An Nginx proxy](https://github.com/jwilder/nginx-proxy/)

## Getting Started

1. run `brew install terraform` 
2. Get the `terraform.tfvars` file that contains the secrets
3. Run `terraform apply`

## Provisioning

To see a preview of what will happen run `terraform plan`.

To apply our plan run `terraform apply`.

## Changing

Alter your file and go through the provisioning process.

### Getting SSH Key Ids

You need to get your SSH ID from Digital Ocean in order to use Terraform to provision machines. You can do this by running: 

`curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer your_api_token" "https://api.digitalocean.com/v2/account/keys"`

> Alternatively you can [upload a new key](https://terraform.io/docs/providers/do/r/ssh_key.html) to Digital Ocean and use that.

### Digital Ocean Regions

You need to specify the digital ocean region you want to deploy. Currently these are the short forms:

- `nyc1`
- `nyc2`
- `nyc3`
- `ams1`
- `ams2`
- `ams3`
- `sfo1`
- `sgp1`
- `lon1`
- `fra1`
- `tor1`

## Destroying

`terraform destroy`