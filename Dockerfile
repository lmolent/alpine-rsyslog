FROM gliderlabs/alpine:edge
MAINTAINER Daniel Guerra daniel.guerra69@gmail.com 
RUN  apk update \
  && apk add rsyslog \
  && rm -rf /var/cache/apk/*

EXPOSE 514 514/udp

VOLUME [ "/var/log", "/etc/rsyslog.d" ]

ENTRYPOINT [ "rsyslogd", "-n" ]
