#!/bin/bash

if [[ $# -eq 0 ]]
then
	echo "Usage: sign_csr <APP_NAME>"
	echo "Example: sign_csr myapp"
else
	if ! [[ -e "index.txt" ]]
	then
		touch index.txt
	fi
	if ! [[ -e serial ]]
	then
		echo "01" > serial
	fi
	openssl ca \
		-out ./out/${1}.crt -config ./openssl.cnf \
		-infiles ./out/${1}.csr
fi
