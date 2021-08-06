#!/bin/ash

cd /etc/ssh/authorized_keys
for user in *
do
	if [ -e "$user" ]
	then
		adduser -D -s /bin/ash "$user"
		usermod -p '*' "$user"
	fi
done
exec /usr/sbin/sshd -D -e


