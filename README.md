# DNSmasq for Caddyshack

## Current
### Fix the dnsmasq.conf file
Replace `{SUBNETBROADCAST}` with your subnets broadcast address

### Build it
```
docker build -t spacklerind/dnsmasq .
```

### Run it
```
docker run -it --rm --cap-add=NET_ADMIN --net=host -p 67:67/udp spacklerind/dnsmasq
```

## Future
Dockerfile re-created to use volume to store `dnsmasq.conf` for changes on the fly
