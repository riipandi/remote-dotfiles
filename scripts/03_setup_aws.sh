#!/bin/bash

if command -v aws &> /dev/null; then
    exit
fi

echo -e "Setup AWS CLI ..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
