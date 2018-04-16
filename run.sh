#!/bin/sh

if [ -z "$SOCKS_USER" ] || [ -z "$SOCKS_PASSWORD" ]; then
	echo "env variable SOCKS_USER or SOCKS_PASSWORD is empty"
	exit 1
fi

id -u $SOCKS_USER /dev/null 2&>1
RES=$?

if [ $RES -ne 0 ]; then
	adduser -HD $SOCKS_USER && echo $SOCKS_USER:$SOCKS_PASSWORD | chpasswd
else
	echo "need to use different username"
	exit 1
fi

sockd
