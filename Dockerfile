FROM gliderlabs/alpine:edge
RUN apk update 
RUN apk-install rsyslog
CMD [exec,/usr/sbin/rsyslogd]
