FROM alpine:latest
RUN  apk update \
  && apk add rsyslog \
  && rm -rf /var/cache/apk/*

ADD rsyslog.conf /etc/rsyslog.conf

EXPOSE 1514 1514/udp
EXPOSE 1514 1514/tcp

#VOLUME [ "/var/log", "/etc/rsyslog.d" ]

ENTRYPOINT [ "rsyslogd", "-n" ]
