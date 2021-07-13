FROM alpine:edge

RUN apk update && apk add dnsdist && apk add tcpdump

EXPOSE 53/udp 53/tcp 8083/tcp 5199/tcp

CMD ["/usr/bin/dnsdist","--config","/etc/dnsdist/dnsdist.conf","--supervised"]
