#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo 'Sorry no password given so password unchanged'

else
mysql -u root  <<EOFT
ALTER USER 'root'@'localhost' IDENTIFIED BY "$1";
FLUSH PRIVILEGES;
EOFT
echo "Password changed and flushed"
fi
