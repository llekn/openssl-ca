#!/bin/bash

if [[ $# -eq 0 ]]
then
	echo "Usage: sign_csr <APP_NAME>"
	echo "Example: sign_csr myapp"
else
	openssl ca \
		-out ./out/${1}.crt -config ./openssl.cnf \
		-infiles ./out/${1}.csr
fi
