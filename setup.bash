#!/bin/bash

echo Setting up Devcontainer environment ...

if ! command -v terraform &> /dev/null
then
     echo ========================================
     echo Installing Terraform
     echo ========================================
     wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
     echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
     sudo apt update && sudo apt install terraform
fi

if ! command -v az &> /dev/null
then
     echo ========================================
     echo Installing Azure CLI                    
     echo ========================================
     curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
fi
echo Devcontainer Environment Ready!