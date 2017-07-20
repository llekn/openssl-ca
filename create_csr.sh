#!/bin/bash

if [[ $# -eq 0 ]]
then
	echo "Usage: create_csr <APP_NAME>"
	echo "Example: create_csr myapp"
else
	SUBJECT_ALT_NAME=$1 \
	openssl req \
		-config ./openssl.cnf \
		-newkey rsa -nodes -keyout ./out/${1}.key \
		-out ./out/${1}.csr -extensions v3_req

	chmod 600 ./out/${1}.key
fi
