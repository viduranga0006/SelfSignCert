#!/bin/bash

# Create Certificate Request
#openssl req -new -nodes -out hostreq.pem -keyout hostkey.pem -config ca.cnf
openssl req -new -newkey rsa:2048 -nodes -out hostreq.pem -keyout hostkey.pem -config ca.cnf
# Signing the certificate request
openssl ca -config ca.cnf -out hostcert.pem -infiles hostreq.pem
echo "ALL DONE"
