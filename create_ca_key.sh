#!/bin/bash

openssl req -new -x509 -days 3650 -extensions v3_ca \
	-keyout ./private/ca.key -out ./ca.crt \
	-config ./openssl.cnf

