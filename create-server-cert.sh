#!/usr/bin/env bash

ROOT_KEY=codeplayerbox-root.key
ROOT_PEM=codeplayerbox-root.pem

SERVER_KEY=codeplayerbox-server.key
SERVER_CSR=codeplayerbox-server.csr
SERVER_CRT=codeplayerbox-server.crt

# Generate certificate signing request
openssl req -new -sha256 -nodes -out ./certs/$SERVER_CSR -newkey rsa:2048 -keyout ./certs/$SERVER_KEY -config <( cat server.csr.cnf )

# Generate server certificate
openssl x509 -req -in ./certs/$SERVER_CSR -CA ./certs/$ROOT_PEM -CAkey ./certs/$ROOT_KEY -CAcreateserial -out ./certs/$SERVER_CRT -days 365 -sha256 -extfile v3.ext 
