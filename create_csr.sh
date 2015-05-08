#!/bin/bash

if [[ $# -eq 0 ]]
then
	echo "Usage: create_csr <APP_NAME>"
	echo "Example: create_csr myapp"
else
	openssl req \
	       -newkey rsa -nodes -keyout ./out/${1}.key \
	       -out ./out/${1}.csr -config ./openssl.cnf
fi
