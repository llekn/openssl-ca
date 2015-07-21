#!/bin/bash

SUBJECT_ALT_NAME="empty" \
openssl req -new -x509 -days 3650 -extensions v3_ca \
	-keyout ./CA/private/ca.key -out ./CA/ca.crt \
	-config ./openssl.cnf &&
chmod 0600 ./CA/private/ca.key

