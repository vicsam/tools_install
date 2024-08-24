#!/bin/bash

# Update and upgrade the system
echo "Updating system..."
sudo apt update && sudo apt upgrade -y

# Function to install a package if not already installed
install_if_not_installed() {
    if ! dpkg -l | grep -q $1; then
        echo "Installing $1..."
        sudo apt install -y $1
    else
        echo "$1 is already installed"
    fi
}

# Text Editors & IDEs
echo "Installing Text Editors & IDEs..."
install_if_not_installed vim
install_if_not_installed nano

# Version Control
echo "Installing Version Control tools..."
install_if_not_installed git
install_if_not_installed gh  # GitHub CLI

# Programming Languages
echo "Installing Programming Languages..."
install_if_not_installed python3
install_if_not_installed python3-pip
install_if_not_installed nodejs
install_if_not_installed npm
install_if_not_installed golang
install_if_not_installed ruby
install_if_not_installed openjdk-11-jdk

# Containers & Orchestration
echo "Installing Containers & Orchestration tools..."
if ! command -v kubectl &> /dev/null; then
    echo "Installing kubectl..."
    sudo snap install kubectl --classic
else
    echo "kubectl is already installed"
fi

install_if_not_installed minikube

echo "Installing Helm..."
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

# Cloud CLI
echo "Installing Cloud CLI tools..."
install_if_not_installed awscli

echo "Installing Azure CLI..."
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

echo "Installing Google Cloud SDK..."
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt-get install apt-transport-https ca-certificates
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update && sudo apt-get install google-cloud-sdk

echo "Installing Terraform..."
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform

# Configuration Management
echo "Installing Configuration Management tools..."
install_if_not_installed ansible

echo "Installing Chef..."
curl https://omnitruck.chef.io/install.sh | sudo bash

echo "Installing Puppet..."
wget https://apt.puppetlabs.com/puppet7-release-focal.deb && sudo dpkg -i puppet7-release-focal.deb
sudo apt-get update && sudo apt-get install puppet-agent

# CI/CD Tools
echo "Installing CI/CD tools..."
echo "Setting up Jenkins..."
docker run -d -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts

install_if_not_installed gitlab-runner

# Servers & Databases
echo "Installing Servers & Databases..."
install_if_not_installed nginx
install_if_not_installed mysql-server
install_if_not_installed postgresql
install_if_not_installed postgresql-contrib
install_if_not_installed redis-server

echo "Setting up MongoDB..."
docker run -d -p 27017:27017 --name mongodb mongo

# Monitoring & Logging
echo "Installing Monitoring & Logging tools..."
install_if_not_installed prometheus
install_if_not_installed grafana

# Miscellaneous Tools
echo "Installing Miscellaneous tools..."
install_if_not_installed curl
install_if_not_installed jq
install_if_not_installed tmux
install_if_not_installed htop
install_if_not_installed fzf
install_if_not_installed net-tools

if ! command -v ngrok &> /dev/null; then
    echo "Installing ngrok..."
    sudo snap install ngrok
else
    echo "ngrok is already installed"
fi

install_if_not_installed zip
install_if_not_installed unzip

echo "All tools installed successfully!"
