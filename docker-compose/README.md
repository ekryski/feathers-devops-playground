# Docker Compose Playground

This provisions our infrastructure for Feathers using docker compose. This can be deployed locally or on a remote instance. Currently it sets up:

- [Slackin](https://github.com/rauchg/slackin)
- Our [Todo demo app](https://github.com/feathersjs/feathers-demo)
- [An Nginx proxy](https://github.com/jwilder/nginx-proxy/)

## Getting Started

### On OSX

1. Make sure you have [docker installed](https://docs.docker.com/engine/installation/mac/)
2. Run `docker-machine create --driver virtualbox default`
3. Run `docker-machine env default`
4. Run `eval "$(docker-machine env default)"`
5. Get the `.env` file that contains the secrets
6. Run `docker-compose up -d`

## Provisioning

Simply run `docker-compose up -d`. This will start all the instances in **detached** mode. You can use `docker-compose ps` to list the running containers.

## Changing

Alter your `docker-compose.yml` file and go through the provisioning process.

## Destroying

Running this sequence will stop all containers and then remove all of them.

1. `docker-compose kill`
2. `docker-compose rm`