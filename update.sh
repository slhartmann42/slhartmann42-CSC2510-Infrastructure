#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo 'Sorry no password given so password unchanged'

else
mysql -u root --skip-password <<EOFT
ALTER USER 'root'@'localhost' IDENTIFIED BY "$1";
FLUSH PRIVILEDGES;
quit;
EOFT
echo "Password changed and flushed"
fi
