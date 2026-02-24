### 🚀 Upload & Execute Script on EC2 via GitHub Actions

    Minimal CI/CD pipeline using GitHub Actions to upload a Bash script to an EC2 instance and execute it remotely.

## 🔄 Triggers

    Push to main
    
    Manual run (workflow_dispatch)

## 🏗️ What the Pipeline Does
# 1️⃣ Upload Script to EC2

    Checkout repo
    
    Configure SSH key from GitHub Secrets
    
    Copy test/scripts.sh to EC2 via scp

# 2️⃣ Connect & Execute

    Uses appleboy/ssh-action to:
    
    chmod +x ~/scripts.sh
    ./scripts.sh
    sudo docker ps

# 🐳 What scripts.sh Does

    Checks if Docker exists
    
    Installs Docker (official repo) if missing
    
    Enables & starts Docker
    
    Adds user to docker group
    
    Runs docker run hello-world to verify
    
    Uses official packages from Docker.

# 🔐 Required Secrets

    Add in:
    
    Repository → Settings → Secrets and variables → Actions
    
    EC2KEY – Private SSH key
    
    USERNAME – EC2 user
    
    HOST – EC2 public IP/DNS

# ☁️ Stack

    GitHub Actions
    
    Amazon Web Services EC2
    
    Docker
    
    Ubuntu
    
    SSH / SCP
