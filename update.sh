#!/usr/bin/env bash

# Ruby
gem update
bundle update

# Terraform
installDir="${1:-/usr/local/bin}"
url="https://releases.hashicorp.com/terraform"

version="$(curl -sL $url | grep -v beta | grep -v alpha | grep -Po "_(\d*\.?){3}" | sed 's/_//' | sort -V | tail -1)"
zip="terraform_${version}_linux_amd64.zip"

echo "* Downloading ${url}/${version}/terraform_${version}_linux_amd64.zip"
sudo curl -s ${url}/${version}/terraform_${version}_linux_amd64.zip -o ${installDir}/${zip}
echo "* Extracting $zip into $installDir"
sudo unzip -o ${installDir}/$zip -d $installDir && sudo rm -v ${installDir}/$zip

# Ubuntu
sudo apt update
sudo apt -y upgrade
