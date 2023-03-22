#!/bin/bash

if ! terrform --version &> /dev/null
then
  echo "installing terraform ..."
  sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

  wget -O- https://apt.releases.hashicorp.com/gpg | \
      gpg --dearmor | \
      sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

  gpg --no-default-keyring \
      --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
      --fingerprint

  echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
        https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
        sudo tee /etc/apt/sources.list.d/hashicorp.list

  sudo apt update
  sudo apt-get install terraform
  # enable auto completion tab
  touch ~/.bashrc
  terraform -install-autocomplete
fi
