#!/usr/bin/env bash

echo "Updating repositories"

apt update

echo "Installing packages"

apt install mysql-server -y

echo "Configuring MySQL"

mysql_secure_installation <<EOF
n
root123
root123
y
y
y
y
EOF

echo "Done!"

