# Ranch-Eye

## Summary

**This container is no longer required for rancher versions 1.2 and upwards. Rancher no longer uses cadvisor within it's agent service. In order to get this detail, users can schedule their own cadvisor containers instead.**

Simple haproxy (1.6) implementation for exposing rancher's implementation of cadvisor stats to an external endpoint.
Useful for tools such as prometheus to monitor rancher managed hosts.

## Description

This container is designed to run on each of your rancher managed hosts, it forwards requests recieved on port 9104 to port 9344 on the internal loopback address..
Below and included, is a docker compose file to run this up in your environment, they key thing to consider running this is that it requires the container to be running in `HOST` networking mode.

```
ranch-eye:
  ports:
  - 9104:9104/tcp
  labels:
    io.rancher.scheduler.global: 'true'
    io.rancher.container.hostname_override: container_name
  tty: true
  image: rucknar/ranch-eye:latest
  stdin_open: true
  net: host
```

## Further Info

The ranch-eye container can be found on the docker hub [here](https://hub.docker.com/r/infinityworks/ranch-eye/)
The catalog entry is in the community catalog, available [here](https://github.com/rancher/community-catalog)
Additional information can be found on the [guide](https://github.com/infinityworksltd/Guide_Rancher_Monitoring)

## Metadata
[![](https://images.microbadger.com/badges/image/infinityworks/ranch-eye.svg)](http://microbadger.com/images/infinityworks/ranch-eye "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/infinityworks/ranch-eye.svg)](http://microbadger.com/images/infinityworks/ranch-eye "Get your own version badge on microbadger.com")
