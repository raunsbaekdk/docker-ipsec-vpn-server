# IPsec VPN Server on Docker

Docker image to run an IPsec VPN server, with both `IPsec/L2TP` and `Cisco IPsec`.

Based on Alpine Linux with [Libreswan](https://libreswan.org) (IPsec VPN software) and [xl2tpd](https://github.com/xelerance/xl2tpd) (L2TP daemon).

#### Table of Contents

- [Install Docker](#install-docker)
- [How to use this image](#how-to-use-this-image)
- [Download](#download)
- [Getting started](#getting-started)
- [License](#license)

## Install Docker

First, [install and run Docker](https://docs.docker.com/install/) on your Linux server.

## How to use this image

### Download

Get the trusted build from the [Docker Hub registry](https://hub.docker.com/r/raunsbaekdk/docker-ipsec-vpn-server/):

```
docker pull raunsbaekdk/docker-ipsec-vpn-server
```

### Getting started

Steps:

1. ```git pull https://github.com/raunsbaekdk/docker-ipsec-vpn-server-tools```
2. ```cd docker-ipsec-vpn-server-tools```
3. ```chmod 755 *.sh```
4. ```./adduser.sh user```
5. ```echo "VPN_DNS_SRV1=8.8.8.8 VPN_DNS_SRV2=8.8.4.4" > etc/pre-up.sh```
6. ```echo "nameserver 127.0.0.53" > etc/resolv.conf```
7. ```./start.sh```

Remember to change to your own DNS servers.

## License

Copyright (C) 2016-2018 [Lin Song](https://www.linkedin.com/in/linsongui)

Based on [the work of Thomas Sarlandie](https://github.com/sarfata/voodooprivacy) (Copyright 2012)

This work is licensed under the [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/)
Attribution required: please include my name in any derivative and let me know how you have improved it!