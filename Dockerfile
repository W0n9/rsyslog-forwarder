FROM alpine:3.23

RUN apk add --no-cache rsyslog

EXPOSE 514

COPY rsyslog.conf /etc/rsyslog.conf

CMD ["rsyslogd", "-n"]