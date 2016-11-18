# feathers-devops-playground

> A playground for Feathers infrastructure configurations

This repos contains test/example configurations for deploying our Feathers infrastructure. It's not really for public consumption but we open source all the things in case someone finds this useful. It is **not** published to npm as a module.


## Consul

If you run into this error:

```sh
Error starting agent: Failed to get advertise address: Multiple private IPs found. Please configure one.
```

You probably have a VM running. In my case I had my docker-machine instance running on OS X so I need to be explicit that I want to bind to my OS X host.

`consul agent -server -bind 127.0.0.1 -bootstrap-expect 1 -node ek-macbook-pro -data-dir /tmp/consul`
