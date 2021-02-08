#!/bin/bash

vpn(){
	vpn="$(ip a | grep tun0 | grep inet | wc -l)"

if [ $vpn = 1 ]; then
	echo "$vpn"
else
	echo "vpn: $vpn"
fi
}

echo "$(vpn)"
