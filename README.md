** Summary **

Simple proxy for exposing rancher's implementation of cadvisor stats to an external endpoint.

** Description **

This container is designed to run on each of your rancher managed hosts, it forwards requests recieved on port 9104 to port 127.0.0.1:9344
