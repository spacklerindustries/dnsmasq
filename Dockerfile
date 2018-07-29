FROM arm32v6/alpine:latest

RUN apk --no-cache add dnsmasq

VOLUME /app

EXPOSE 67/udp

ENTRYPOINT ["dnsmasq", "-k", "--log-facility=-", "--conf-file=/app/dnsmasq.conf"]
