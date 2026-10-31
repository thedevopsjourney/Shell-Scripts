<h1 align="center">🐚 Shell Scripting</h1>

<p align="center">
  Shell scripts I write while learning <b>Linux</b> and <b>DevOps automation</b>.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Shell-Bash-4EAA25?logo=gnubash&logoColor=white" alt="Bash">
  <img src="https://img.shields.io/badge/Cloud-AWS-FF9900?logo=amazonaws&logoColor=white" alt="AWS">
  <img src="https://img.shields.io/badge/Platform-Linux%20%7C%20WSL-FCC624?logo=linux&logoColor=black" alt="Linux">
  <img src="https://img.shields.io/badge/Status-Learning-blue" alt="Status">
</p>

---

## 📁 Repo Structure

```
shell-scripting/
├── README.md
├── .gitignore
└── aws_resource_list.sh
```

| File | Description |
|---|---|
| 📄 `README.md` | Project overview and usage |
| ☁️ `aws_resource_list.sh` | Lists AWS resources (EC2, S3, IAM, etc.) in one run |

---

## ⚙️ Prerequisites

- 🐧 Linux / Ubuntu / WSL
- 🐚 Bash (`bash --version`)
- ☁️ AWS CLI installed and configured in Linux distribution (`aws configure`)

---

## 🚀 Quick Start

```bash
# 1. Clone the repo
git clone https://github.com/im-suganthavanan/shell-Scripts.git
cd shell-Scripts

# 2. Make the script executable
chmod +x aws_resource_list.sh

# 3. Run it
./aws_resource_list.sh <region> <service>
```
🗝️./aws_resource_list.sh ap-south-2 EC2

---

## 🧠 What I'm Learning Here

- [x] AWS Resource Tracker List by using AWS CLI

---

## 🔐 Security Notes

- Needs valid AWS credentials with **read access** to the listed services.
- ❌ Never commit access keys, secrets, or `.pem` files to this repo.
- Credentials are read from `aws configure`, never hardcoded in scripts.

---

## 👨‍💻 Author

**Suganthavanan**
🔗 GitHub: [@im-suganthavanan](https://github.com/im-suganthavanan)

<p align="center">⭐ If this helped you, give the repo a star!</p>
