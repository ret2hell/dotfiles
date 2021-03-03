#!/bin/bash

vpn(){
	vpn="$(ip a | grep tun0 | grep inet | wc -l)"

if [ $vpn = 1 ]; then
	curl="$(curl --no-progress-meter ifconfig.me)"
	echo "vpn: $curl"
else
	echo "vpn: none"
fi
}

echo "$(vpn)"
