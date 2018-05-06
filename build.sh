#!/bin/sh

docker stop ipsec-vpn-server

docker build -t raunsbaekdk/docker-ipsec-vpn-server .
