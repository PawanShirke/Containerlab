#!/bin/sh
sudo docker exec clab-frrlab-PC1 ip link set eth1 up
sudo docker exec clab-frrlab-PC1 ip addr add 192.168.11.2/24 dev eth1
sudo docker exec clab-frrlab-PC1 ip route add 192.168.0.0/16 via 192.168.11.1 dev eth1
sudo docker exec clab-frrlab-PC1 ip route add 10.10.10.0/24 via 192.168.11.1 dev eth1

sudo docker exec clab-frrlab-PC2 ip link set eth1 up
sudo docker exec clab-frrlab-PC2 ip addr add 192.168.12.2/24 dev eth1
sudo docker exec clab-frrlab-PC2 ip route add 192.168.0.0/16 via 192.168.12.1 dev eth1
sudo docker exec clab-frrlab-PC2 ip route add 10.10.10.0/24 via 192.168.12.1 dev eth1

sudo docker exec clab-frrlab-PC3 ip link set eth1 up
sudo docker exec clab-frrlab-PC3 ip addr add 192.168.13.2/24 dev eth1
sudo docker exec clab-frrlab-PC3 ip route add 192.168.0.0/16 via 192.168.13.1 dev eth1
sudo docker exec clab-frrlab-PC3 ip route add 10.10.10.0/24 via 192.168.13.1 dev eth1

sudo docker exec clab-frrlab-PC4 ip link set eth1 up
sudo docker exec clab-frrlab-PC4 ip addr add 192.168.14.2/24 dev eth1
sudo docker exec clab-frrlab-PC4 ip route add 192.168.0.0/16 via 192.168.14.1 dev eth1
sudo docker exec clab-frrlab-PC4 ip route add 10.10.10.0/24 via 192.168.14.1 dev eth1

