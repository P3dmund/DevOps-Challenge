# DevOps Challenge

This repository contains three DevOps challenges:

-  Shell scripting  
-  Infrastructure as Code (IaC) using Terraform  
-  CI/CD workflows with GitHub Actions  

---

##  Repository Structure

| Category                | Description                                 | Link                                                 |
|-------------------------|---------------------------------------------|------------------------------------------------------|
| 🖥️ Shell Scripts        | Script to archive old files                 | [`Scripts/`](https://github.com/P3dmund/DevOps-Challenge/tree/main/Scripts) |
| ☁️ Terraform IaC        | Provision AWS EC2 + Security Group          | [`Terraform/`](https://github.com/P3dmund/DevOps-Challenge/tree/main/Terraform) |
| 🔁 GitHub Actions CI/CD | Auto-merge, build, Docker deploy           | [`.github/workflows/`](https://github.com/P3dmund/DevOps-Challenge/tree/main/.github/workflows) |

---

## 1. Shell Scripting Challenge

**Script:** `Old_files.sh`

**What It Does:**

- Accepts a directory path as input
- Finds files older than 7 days
- Compresses them with `gzip`
- Moves them to a user-defined archive directory
- Logs all actions to a timestamped log file

[View Script](https://github.com/P3dmund/DevOps-Challenge/blob/main/Scripts/Old_files.sh)

---

## 2. Terraform Challenge

**Files:**  
`main.tf`, `provider.tf`, `variables.tf`, `outputs.tf`, `security_group.tf`

**What It Does:**

- Provisions an AWS EC2 instance  
- Configures a security group to allow:
  - SSH (port 22)
  - HTTP (port 80)
- Outputs the instance’s public IP address after creation

[View Terraform Code](https://github.com/P3dmund/DevOps-Challenge/tree/main/Terraform)

---

## ⚙️ 3. CI/CD Pipeline Challenge

**Workflow File:** `.github/workflows/deploy.yml`

**What It Does:**

- On push to `dev` branch:
  - Automatically merges changes into `staging`
- On push to `staging`:
  - Builds the project with Maven
  - Builds a Docker image
  - Deploys the container locally on port `8080`

[View GitHub Actions Workflow](https://github.com/P3dmund/DevOps-Challenge/blob/main/.github/workflows/deploy.yml)

---

## Requirements

Make sure the following are set up before running the challenges:

- **AWS CLI** installed and configured with valid credentials
- **Docker** installed and running
---