#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo 'Sorry no password given so password unchanged'

else
NEW_PASSWORD="$1"

mysql -u root <<EOFT
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$NEW_PASSWORD';
FLUSH PRIVILEGES;
EOFT
echo "Password changed and flushed"
fi
