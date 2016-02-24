###############################
# This is currently not used!
###############################

# Configure the Docker provider
#provider "docker" {
#  host = "https://hub.docker.com/"
#}
#
## Configure the Docker images.
#resource "docker_image" "nginx-proxy" {
#  name = "jwilder/nginx-proxy:latest"
#}
#
#resource "docker_image" "slackin" {
#  name = "chk1/slackin:latest"
#}
#
#resource "docker_image" "feathers-demo" {
#  name = "ekryski/feathers-demo:latest"
#}
#
## Configure the Docker containers
#resource "docker_container" "nginx-proxy" {
#  name = "nginx-proxy"
#  image = "${docker_image.nginx-proxy.latest}"
#  ports {
#    internal = 80
#    external = 80
#  }
#  volumes {
#    host_path = "/var/run/docker.sock"
#    container_path = "/tmp/docker.sock"
#    read_only = true
#  }
#}
#
#resource "docker_container" "slackin" {
#  name = "slackin"
#  image = "${docker_image.slackin.latest}"
#  ports {
#    internal = 3000
#    external = 3000
#  }
#  env = ["VIRTUAL_HOST=slack.feathersjs.com", "SLACK_ORG=feathersjs", #"SLACK_TOKEN=<insert token>"]
#}
#
#resource "docker_container" "feathers-demo" {
#  name = "feathers-demo"
#  image = "${docker_image.feathers-demo.latest}"
#  ports {
#    internal = 8080
#    external = 8080
#  }
#  env = ["VIRTUAL_HOST=demo.feathersjs.com", "PORT=8080"]
#}