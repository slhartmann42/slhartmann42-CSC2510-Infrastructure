#!/bin/bash

if {{ $# -eq 0 ]], then
	echo "Sorry no password given so password unchanged'

else
	mysql -u root -p <<EOF
	FLUSH PRIVILEDGES;
	EOF
	ALTER USER 'root'@"localhost' IDENTIFIED BY '$1';
	FLUSH PRIVILEDGES;
	echo "Password changed and flushed"
fi
