#!/bin/bash
case "$1" in
	enable)
	sysctl -w net.ipv6.conf.all.disable_ipv6=0 && sysctl -w net.ipv6.conf.default.disable_ipv6=0
	exit
	;;

	disable)
	sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1
	exit
	;;

	*)
	echo "Usage: sudo ./ipv6.sh [enable|disable]"
	exit
	;;
esac
