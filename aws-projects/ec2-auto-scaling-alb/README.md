# EC2 Auto Scaling with Application Load Balancer

## 🔹 Overview
This project demonstrates deploying a highly available, self-healing web infrastructure using:
- **EC2 Launch Templates**
- **Auto Scaling Group (ASG)**
- **Application Load Balancer (ALB)**
- **IAM roles**
- **Security Groups**

## 🔹 Architecture
1. Traffic hits the ALB
2. ALB forwards it to registered EC2s in the Target Group
3. Auto Scaling launches/replaces EC2 instances based on health and capacity

## 🔹 Components Used
- EC2 (Amazon Linux 2, t2.micro)
- Launch Template with User Data (Apache install)
- ALB with Target Group Health Checks
- Auto Scaling Group with min=1, max=3
- IAM role: SSM access
- Security Groups: Locked down, least privilege
- User Data script installs Apache and serves static HTML

## 🔹 Screenshots
Screenshots of setup can be found in the `/screenshots` folder.

## 🔹 Learnings
- Diagnosed ALB health check failures caused by missing inbound rules
- Proper use of IAM roles, SG chaining, and public subnet networking
- Understood how to configure and troubleshoot ASG, Target Groups, and ALB routing
