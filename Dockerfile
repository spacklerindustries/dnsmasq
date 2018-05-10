FROM arm32v6/alpine:latest

RUN apk --no-cache add dnsmasq

COPY dnsmasq.conf /etc/dnsmasq.conf

EXPOSE 67/udp

ENTRYPOINT ["dnsmasq", "-k", "--log-facility=-"]

