FROM haproxy:1.5
MAINTAINER Ed Marshall <ed.marshall@infinityworks.com>

ADD haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

RUN exec haproxy -db -f /usr/local/etc/haproxy/haproxy.cfg

ENV LISTEN_PORT=9104

EXPOSE $LISTEN_PORT
