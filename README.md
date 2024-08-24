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
     ```

     Or download the script:

     ```bash
     wget https://github.com/vicsam/tools_install.git
     ```

2. **Make the Script Executable**

     You need to give execution permissions to the script:

     ```bash
     chmod +x tools_install.sh
     ```

3. **Run the Script**

     Execute the script with the following command:

     ```bash
     ./tools_install.sh
     ```

     The script will update your system and then proceed to install the necessary tools. It will skip any tools that are already installed, ensuring that your environment setup is efficient.

4. **Check Installation**

     After the script finishes running, you can verify that the tools were installed correctly by running the corresponding commands for each tool (e.g., git --version, docker --version, etc.).

## Notes

- The script assumes that you are running a Debian-based distribution (e.g., Ubuntu). If you are using another distribution, you may need to modify the package manager commands accordingly.
- The script also makes use of Docker to set up Jenkins and MongoDB, so ensure that Docker is installed and running on your system before executing the script.

## Contribution

Feel free to contribute by adding more tools, improving the script, or fixing any issues. Fork this repository, make your changes, and submit a pull request.
