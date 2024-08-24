# Automated Tool Installation Script

## Overview

This bash script automates the installation of essential development and DevOps tools on a Linux system. The script checks if each tool is already installed and only installs the ones that are missing, ensuring that your environment is set up efficiently and consistently.

## Tools Included

The script installs a wide range of tools, including:

- **Text Editors & IDEs**
  - Vim
  - Nano

- **Version Control**
  - Git
  - GitHub CLI (gh)

- **Programming Languages**
  - Python 3 & pip
  - Node.js & npm
  - Golang
  - Ruby
  - Java (OpenJDK 11)

- **Containers & Orchestration**
  - Kubernetes (kubectl)
  - Minikube
  - Helm

- **Cloud CLI**
  - AWS CLI
  - Azure CLI
  - Google Cloud SDK
  - Terraform

- **Configuration Management**
  - Ansible
  - Chef
  - Puppet

- **CI/CD Tools**
  - Jenkins (using Docker)
  - GitLab Runner

- **Servers & Databases**
  - Nginx
  - MySQL/MariaDB
  - PostgreSQL & Contrib
  - Redis
  - MongoDB (using Docker)

- **Monitoring & Logging**
  - Prometheus
  - Grafana

- **Miscellaneous Tools**
  - cURL
  - jq
  - tmux
  - htop
  - fzf
  - net-tools
  - ngrok
  - zip & unzip

## Prerequisites

- A Linux machine with `sudo` privileges.
- Ensure that Docker is installed on your machine to run Jenkins and MongoDB in containers.

## How to Use

1. **Clone the Repository**

   Clone the repository containing this script or directly download the script to your Linux machine.

   ```bash
   git clone https://github.com/vicsam/tools_install.git
   cd tools_install
