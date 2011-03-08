#!/bin/bash

route delete default
route add default gw gw2.stockholm.cint.com
route add -net 10.23.96.0 netmask 255.255.248.0 gw 192.168.121.3
route add -net 10.23.98.0 netmask 255.255.255.0 gw 192.168.121.3
#route add -net 10.23.12.0 netmask 255.255.255.0 gw 192.168.121.4
#route add -net 10.23.11.0 netmask 255.255.255.0 gw 192.168.121.4
#route add -net 10.23.10.0 netmask 255.255.255.0 gw 192.168.121.4

