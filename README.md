# 🚀 DevOps + MLOps Roadmap 2026 (Compressed to < 12 Months)

**Goal:** Become job-ready as MLOps / Platform / DevOps Engineer (AI track) in under 12 months.  
**Original plan:** 22 months (660 days) → **My target:** 10–11 months (~320–340 focused days)

---

## 📊 Overall Progress

| Phase | Status | Progress |
|-------|--------|----------|
| 0 - Foundation & Mindset | 🟢 Almost Done | 15/16 |
| 0.5 - Python Foundations | 🟡 In Progress | 10/30 |
| 1 - Linux & Bash | ⚪ Not Started | 0/26 |
| 2 - Containers, GPU & Observability | ⚪ Not Started | 0/28 |
| 3 - Programming Deep Dive | ⚪ Not Started | 0/40 |
| 4 - IaC, CI/CD & GitOps | ⚪ Not Started | 0/29 |
| 5 - Cloud Platforms & FinOps | ⚪ Not Started | 0/24 |
| 6 - Kubernetes & Security | ⚪ Not Started | 0/34 |
| 7 - AI Infrastructure & MLOps | ⚪ Not Started | 0/30 |
| 8 - Job Hunt & Personal Brand | ⚪ Not Started | 0/15 |

**Total Checklist Items:** 25 / 272 completed (**9%**)

---

## 📅 Daily / Weekly Log

> Update this section every day or at least every Sunday.

### Current Week: [Week Number] (Date range)

**Focus this week:**  
**Hours logged this week:**  

| Day | Date | Hours | What I did | Status |
|-----|------|-------|------------|--------|
| Mon |      |       |            |        |
| Tue |      |       |            |        |
| Wed |      |       |            |        |
| Thu |      |       |            |        |
| Fri |      |       |            |        |
| Sat |      |       |            |        |
| Sun |      |       | Review + Plan next week |        |

**Weekly Wins:**  
**Blockers / Notes:**  

---

## Phase 0 – Foundation & Mindset (Days 1–15)
**Status:** Almost complete

### Checklist
- [x] Define clear goal: DevOps + MLOps Engineer by 2028
- [x] Create accounts: GitHub, LinkedIn, Medium/Dev.to
- [x] Build Notion/Obsidian workspace (Daily Log, Project Tracker, Resources)
- [x] Honest skills assessment
- [x] Join communities (r/devops, CNCF Slack, Platform Engineering Discord)
- [x] Plan hardware / home lab
- [x] Choose Proxmox vs Ubuntu 24.04 vs cloud lab
- [x] Network diagram (Excalidraw / Draw.io)
- [x] Create Git repo: `homelab-infrastructure`
- [x] Document Architecture Decision Records (ADRs)
- [x] Install Ubuntu 24.04 LTS
- [x] SSH hardening (key-based auth, disable root, fail2ban)
- [x] Static IP, DNS, essential tools (htop, tmux, neovim)
- [x] First blog post: “Why I am becoming a Platform Engineer in 2026”
- [x] **Project #2** – Home Lab Documentation Site (MkDocs or Hugo)

---

## Phase 0.5 – Python Foundations (Compressed: 25–30 days)
**Goal:** 10 real projects on GitHub + comfortable reading/writing Python

### Core Python
- [x] Variables, data types
- [x] Lists, tuples, dictionaries, sets
- [x] Control flow (if/elif/else, for, while)
- [x] Functions
- [x] Scope & mutability
- [x] Official Python tutorial + freeCodeCamp course

### Practical Python
- [ ] File I/O
- [ ] Error handling (try/except)
- [ ] Modules (os, sys, pathlib, datetime, json, csv)
- [ ] List comprehensions, map, filter
- [ ] Basic OOP (classes, methods, `__init__`)
- [ ] pip + virtual environments (venv)

### Real-World Python
- [ ] HTTP requests (`requests`)
- [ ] Parsing JSON + error handling
- [ ] Environment variables + `.env`
- [ ] CLI tools (argparse or click)
- [ ] pytest (first tests)
- [ ] structlog
- [ ] subprocess

### Python Mini Projects (Must complete all 10)
- [ ] #1 System info reporter (CPU, memory, disk)
- [ ] #2 File organiser (by extension)
- [ ] #3 Weather CLI (free API)
- [ ] #4 CSV data cleaner
- [ ] #5 Simple web scraper
- [ ] #6 Password generator CLI
- [ ] #7 Log parser + report
- [ ] #8 GitHub repo lister (API)
- [ ] #9 Expense tracker (CSV)
- [ ] #10 Automated file backup

**Deliverables**
- [ ] 10 Python projects on GitHub with good READMEs
- [ ] Blog post: “10 Python projects I built as a complete beginner”

---

## Phase 1 – Linux Mastery & Scripting (Compressed: 35–40 days)

### System Fundamentals
- [ ] Boot process (GRUB, systemd)
- [ ] File systems (ext4, xfs, Btrfs, LVM)
- [ ] /proc, /sys
- [ ] Users, groups, permissions, ACLs
- [ ] Package management (apt, snap, flatpak)

### Process & Performance
- [ ] Process lifecycle, signals, zombies
- [ ] Custom systemd services
- [ ] Performance tools (htop, iotop, iostat, vmstat, sar)
- [ ] journalctl, rsyslog, logrotate
- [ ] Cron + systemd timers

### Networking & Security
- [ ] TCP/IP + practical tools (tcpdump, ss, traceroute)
- [ ] Firewall (UFW / iptables)
- [ ] WireGuard VPN
- [ ] DNS basics

### Bash Scripting
- [ ] Functions, arrays, error handling, exit codes
- [ ] Automation scripts (monitoring, backups, deployments)
- [ ] Combine Python + Bash
- [ ] Reusable script library
- [ ] Blog: “Building production-ready Bash scripts”

### Projects 3–8
- [ ] #3 System Health Monitoring Dashboard
- [ ] #4 Automated Backup Solution with Rotation
- [ ] #5 Log Analysis and Alert Script
- [ ] #6 Custom systemd Service
- [ ] #7 Network Performance Testing Suite
- [ ] #8 Bash-based DevOps CLI Toolkit

---

## Phase 2 – Containers, GPU & Observability (Compressed: 35–40 days)

### Docker Fundamentals
- [ ] Architecture, images vs containers
- [ ] Multi-stage builds
- [ ] Volumes & networks
- [ ] Docker Compose

### GPU & AI Containers
- [ ] NVIDIA Container Toolkit
- [ ] GPU runtime
- [ ] Local LLM (Ollama / llama.cpp)
- [ ] Resource limits
- [ ] Private registry

### Observability
- [ ] Prometheus + Grafana from scratch
- [ ] node_exporter, cAdvisor, NVIDIA DCGM
- [ ] Dashboards + Alertmanager
- [ ] Loki

### Advanced
- [ ] Full stack (Nginx + PostgreSQL + Redis + MinIO)
- [ ] Dev Containers
- [ ] Health checks & restart policies
- [ ] Trivy / Grype scanning

### Projects 9–15
- [ ] #9 Multi-stage Python/Node.js Docker Build
- [ ] #10 Docker Compose Full-Stack App
- [ ] #11 Private Docker Registry
- [ ] #12 GPU-Accelerated Container Application
- [ ] #13 Prometheus + Grafana Monitoring Stack
- [ ] #14 Container Vulnerability Scanning Pipeline
- [ ] #15 Self-Hosted AI Chat Platform with Ollama

---

## Phase 3 – Programming Deep Dive (Compressed: 60–70 days)

### Python for Platform Engineering
- [ ] FastAPI
- [ ] Boto3 / cloud SDKs
- [ ] Async (asyncio, aiohttp)
- [ ] File processing (CSV, JSON, YAML)
- [ ] structlog + retries (tenacity)
- [ ] pytest + mocking + coverage

### Data Foundations
- [ ] NumPy
- [ ] Pandas
- [ ] Matplotlib / Seaborn
- [ ] Real datasets (CSV, JSON, Parquet)
- [ ] Data pipelines
- [ ] Project: Data quality checker

### ML Fundamentals
- [ ] Scikit-learn
- [ ] Metrics (accuracy, precision, recall, F1, AUC)
- [ ] PyTorch basics
- [ ] HuggingFace Transformers
- [ ] Local inference
- [ ] Project: End-to-end ML pipeline

### LLM Fundamentals
- [ ] How LLMs work (conceptual)
- [ ] OpenAI / Anthropic SDKs
- [ ] Prompt engineering
- [ ] LangChain basics
- [ ] Vector embeddings
- [ ] Simple RAG
- [ ] Project: LLM-powered document Q&A

### Go (Light version)
- [ ] Fundamentals + concurrency
- [ ] CLI with cobra/viper
- [ ] Basic Kubernetes client-go
- [ ] Project: Simple CLI tool

### Projects 16–23
- [ ] #16 Infrastructure API with FastAPI
- [ ] #17 Cloud Resource Automation
- [ ] #18 Data Quality Checker for ML Datasets
- [ ] #19 End-to-End ML Pipeline with Monitoring
- [ ] #20 LLM-Powered Document Q&A Tool
- [ ] #21 Real-time Log Processing with Kafka (optional if time)
- [ ] #22 CLI Tool for Cluster Management in Go
- [ ] #23 Vector Database RAG Application

---

## Phase 4 – IaC, CI/CD & GitOps (Compressed: 35–40 days)

- [ ] Terraform / OpenTofu (modules, state, workspaces)
- [ ] Remote state + locking
- [ ] Terraform testing (validate, tflint)
- [ ] GitHub Actions (workflows, matrix, secrets)
- [ ] Build & push Docker images
- [ ] Automated testing in pipelines
- [ ] ArgoCD (or Flux)
- [ ] Progressive delivery (canary / blue-green)
- [ ] Ansible basics + Vault
- [ ] Integration Terraform + Ansible

### Projects 24–30
- [ ] #24 Multi-Environment Terraform Infrastructure
- [ ] #25 GitHub Actions CI/CD Pipeline
- [ ] #26 GitLab CI (optional)
- [ ] #27 ArgoCD GitOps Deployment
- [ ] #28 Canary Deployment with Argo Rollouts
- [ ] #29 Ansible Automation
- [ ] #30 Complete IaC Solution (Terraform + Ansible)

---

## Phase 5 – Cloud Platforms & FinOps (Compressed: 40–45 days)

**Primary Cloud:** [ ] Azure   [ ] AWS   (choose one)

- [ ] Core services (compute, storage, networking, IAM, GPU VMs)
- [ ] Managed Kubernetes (AKS / EKS)
- [ ] Serverless
- [ ] Cost optimisation + Infracost
- [ ] Cost dashboards
- [ ] Tagging & budget alerts

### Certifications
- [ ] AZ-104 (or AWS SAA)
- [ ] AZ-400 (or AWS DevOps)
- [ ] Practice exams + labs

### Projects 31–36
- [ ] #31 Multi-Region Deployment
- [ ] #32 Serverless Application
- [ ] #33 Data Pipeline
- [ ] #34 Cost Optimisation Dashboard
- [ ] #35 Infracost in CI/CD
- [ ] #36 Multi-Cloud Application (light)

---

## Phase 6 – Kubernetes & Security (Compressed: 45–50 days)

- [ ] Production cluster (K3s / kubeadm)
- [ ] Core resources (Pods, Deployments, StatefulSets, Services, Ingress)
- [ ] ConfigMaps, Secrets, PVs
- [ ] Helm + Kustomize
- [ ] RBAC + Pod Security Standards
- [ ] Network Policies
- [ ] External Secrets Operator
- [ ] Admission controllers (OPA / Kyverno)
- [ ] HPA / VPA / KEDA
- [ ] Service Mesh (Istio or Linkerd – optional)
- [ ] Karpenter / Cluster Autoscaling

### CKA
- [ ] killer.sh practice (do it twice)
- [ ] Time-based troubleshooting
- [ ] **Pass CKA**

### Projects 37–43
- [ ] #37 Production K3s/K8s Cluster
- [ ] #38 Microservices Deployment
- [ ] #39 Helm Chart Development
- [ ] #40 RBAC and Security Policies
- [ ] #41 Service Mesh (optional)
- [ ] #42 External Secrets Integration
- [ ] #43 Automated Cluster Scaling with Karpenter

---

## Phase 7 – AI Infrastructure & MLOps (Compressed: 45–55 days)

- [ ] NVIDIA GPU Operator + MIG / time-slicing
- [ ] DCGM Exporter
- [ ] vLLM or Triton Inference Server
- [ ] Model caching & batching
- [ ] Vector DB (Milvus / Qdrant / Weaviate)
- [ ] Advanced RAG
- [ ] Kafka / Redis for streaming
- [ ] Kubeflow or MLflow
- [ ] Model monitoring (drift, performance)

### Capstone – Production AI Platform (Project #50)
- [ ] LLM inference service
- [ ] Vector database + real documents
- [ ] FastAPI + simple web UI
- [ ] Full monitoring (Prometheus, Grafana, Loki, DCGM)
- [ ] Auto-scaling
- [ ] Cost tracking (tokens + GPU)
- [ ] Invite 10+ beta testers
- [ ] Record demo video

### Other Projects 44–49
- [ ] #44 GPU-Accelerated Kubernetes Cluster
- [ ] #45 LLM Inference Service
- [ ] #46 Vector Database RAG System
- [ ] #47 Real-time ML Pipeline
- [ ] #48 Backstage IDP (optional if time)
- [ ] #49 MLOps Pipeline with Kubeflow/MLflow

---

## Phase 8 – Job Hunt & Personal Brand (20–30 days)

- [ ] GitHub profile polished (pinned repos + README)
- [ ] Portfolio website or strong case studies
- [ ] Resume focused on Platform / MLOps / GPU / Kubernetes
- [ ] Quantify impact (cost reduction, deployment time, etc.)
- [ ] LinkedIn optimised
- [ ] Publish all blog posts
- [ ] Demo videos of top projects
- [ ] Open source contributions
- [ ] 5–10 quality applications per day
- [ ] Mock interviews
- [ ] Salary negotiation prep

**Target roles:** MLOps Engineer, Platform Engineer, DevOps Engineer (AI)  
**Salary target:** $120k – $180k (location dependent)

---

## ⭐ Success Metrics (End of Journey)

- [ ] 40+ solid projects on GitHub
- [ ] CKA passed
- [ ] At least one cloud cert
- [ ] Working Capstone AI platform with demo
- [ ] 10+ blog posts
- [ ] Strong LinkedIn presence
- [ ] Interview-ready for senior Platform / MLOps roles

---

**You've got this.**  
One consistent day at a time. Update this README every day or every week.  
Ship in public. Keep going.

---

*Last updated: [Date]*
