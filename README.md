** Summary **

Simple haproxy for exposing rancher's implementation of cadvisor stats to an external endpoint.
Useful for tools such as prometheus to monitor rancher managed hosts.

** Description **

This container is designed to run on each of your rancher managed hosts, it forwards requests recieved on port 9104 to port 127.0.0.1:9344.
I've included a docker compose file to run this up in your environment.
