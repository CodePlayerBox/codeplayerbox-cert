#!/usr/bin/env bash

ROOT_KEY=codeplayerbox-root.key
ROOT_PEM=codeplayerbox-root.pem

mkdir ./certs/

# Generate the root certificate
openssl genrsa -des3 -out ./certs/$ROOT_KEY -passout pass:codeplayerbox 2048

# Generate public certificate
openssl req -x509 -new -nodes -key ./certs/$ROOT_KEY -sha256 -passin pass:codeplayerbox -days 365 -out ./certs/$ROOT_PEM -subj '/CN=CodePlayerBox Trusted Certificate Authority' 
