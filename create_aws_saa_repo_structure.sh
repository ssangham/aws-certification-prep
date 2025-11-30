#!/usr/bin/env bash
set -euo pipefail

# Script: create_aws_saa_repo_structure.sh
# Purpose: Create AWS SAA-C03 repo structure and starter markdown files
# Usage: run this from the root of your cloned aws-certification-prep repo
#   chmod +x create_aws_saa_repo_structure.sh
#   ./create_aws_saa_repo_structure.sh

root="."

mkdir -p "$root"

# Folders list
folders=(
  "00-Study-Plan"
  "01-AWS-IAM-And-Accounts"
  "02-AWS-EC2-And-Compute"
  "03-AWS-S3-And-Object-Storage"
  "04-AWS-VPC-And-Networking"
  "05-AWS-High-Availability-And-ArchDesign"
  "06-AWS-Serverless"
  "07-AWS-Storage-Services"
  "08-AWS-Databases"
  "09-AWS-Monitoring-And-Security"
  "10-AWS-Migration-And-Data-Transfer"
  "11-SAA-Architectures"
  "12-Hands-On-Labs"
  "13-Cheat-Sheets"
  "14-Practice-Questions"
)

for d in "${folders[@]}"; do
  if [ -d "$root/$d" ]; then
    echo "Directory exists: $d (skipping)"
  else
    mkdir -p "$root/$d"
    echo "Created: $d"
  fi
done

# Helper to create file only if not exists
create_if_missing() {
  local path="$1"
  local content="$2"
  if [ -f "$path" ]; then
    echo "File exists: $path (skipping)"
  else
    printf "%s\n" "$content" > "$path"
    echo "Created: $path"
  fi
}

# Top-level README
readme_content="# AWS Solutions Architect Associate (SAA-C03) Prep\n\nThis repository contains structured notes, hands-on labs, architecture diagrams, cheat sheets, and practice questions aligned to the official AWS SAA-C03 exam guide and Stéphane Maarek's course.\n\n## Study cadence\n- Weekdays: 1.5 hrs/day\n- Weekends: 4 hrs/day\n- Target exam date: Jan 31\n\nRefer to the folders for topic files, labs, and mock tests."
create_if_missing "${root}/README.md" "$readme_content"

# .gitignore
gitignore_content=".DS_Store\n__pycache__/\n.vscode/\n.idea/\n*.log\nnode_modules/\n.env"
create_if_missing "${root}/.gitignore" "$gitignore_content"

# 00-Study-Plan files
create_if_missing "${root}/00-Study-Plan/exam-overview.md" "# Exam Overview\n\nSummary of domains and exam weightings (SAA-C03)."
create_if_missing "${root}/00-Study-Plan/weekly-plan.md" "# Weekly Plan\n\n9-week study plan: Foundations, Storage, Networking, Databases, Serverless, Security, Review, Practice, Final Review."
create_if_missing "${root}/00-Study-Plan/daily-tracker.md" "# Daily Tracker\n\nUse this file to mark completed study sessions."
create_if_missing "${root}/00-Study-Plan/resources.md" "# Resources\n- Stéphane Maarek - Ultimate AWS Certified Solutions Architect Associate (Udemy)\n- AWS Official SAA-C03 Exam Guide\n- AWS Skill Builder\n- TutorialsDojo practice tests\n- qwiklabs"

# 01-AWS-IAM-And-Accounts
create_if_missing "${root}/01-AWS-IAM-And-Accounts/iam-basics.md" "# IAM Basics\n- Users, Groups, Roles, Policies, MFA\n- Best practices"
create_if_missing "${root}/01-AWS-IAM-And-Accounts/iam-policies.md" "# IAM Policies\n- Policy structure, managed vs inline, policy simulator"
create_if_missing "${root}/01-AWS-IAM-And-Accounts/iam-advanced.md" "# IAM Advanced\n- Resource-based policies, ABAC, permission boundaries"
create_if_missing "${root}/01-AWS-IAM-And-Accounts/sts-and-temporary-credentials.md" "# STS & Temporary Credentials\n- AssumeRole, WebIdentity, federation"
create_if_missing "${root}/01-AWS-IAM-And-Accounts/organizations-and-scp.md" "# AWS Organizations & SCPs\n- Multi-account strategy, Service Control Policies"
create_if_missing "${root}/01-AWS-IAM-And-Accounts/iam-labs.md" "# IAM Labs\n- Hands-on: Create role, cross-account assume-role, policy examples"

# 02-AWS-EC2-And-Compute
create_if_missing "${root}/02-AWS-EC2-And-Compute/ec2-fundamentals.md" "# EC2 Fundamentals\n- Instance types, AMIs, user-data, metadata"
create_if_missing "${root}/02-AWS-EC2-And-Compute/ec2-networking.md" "# EC2 Networking\n- ENI, private IPs, public IPs, Elastic IPs, placement groups"
create_if_missing "${root}/02-AWS-EC2-And-Compute/ec2-storage.md" "# EC2 Storage\n- EBS types, snapshots, performance"
create_if_missing "${root}/02-AWS-EC2-And-Compute/elastic-load-balancing.md" "# Elastic Load Balancing\n- ALB, NLB, CLB, health checks, target groups"
create_if_missing "${root}/02-AWS-EC2-And-Compute/auto-scaling.md" "# Auto Scaling\n- Launch templates, lifecycle hooks, scaling policies"
create_if_missing "${root}/02-AWS-EC2-And-Compute/compute-optimizer.md" "# Compute Optimizer\n- Rightsizing recommendations"
create_if_missing "${root}/02-AWS-EC2-And-Compute/placement-groups.md" "# Placement Groups\n- Cluster, Spread, Partition"
create_if_missing "${root}/02-AWS-EC2-And-Compute/ec2-labs.md" "# EC2 Labs\n- Launch EC2, attach EBS, test ASG + ALB"

# 03-AWS-S3-And-Object-Storage
create_if_missing "${root}/03-AWS-S3-And-Object-Storage/s3-basics.md" "# S3 Basics\n- Buckets, objects, keys, consistency model"
create_if_missing "${root}/03-AWS-S3-And-Object-Storage/s3-security.md" "# S3 Security\n- Bucket policies, ACLs, block public access"
create_if_missing "${root}/03-AWS-S3-And-Object-Storage/s3-versioning.md" "# S3 Versioning & Replication\n- CRR vs SRR, versioning requirements"
create_if_missing "${root}/03-AWS-S3-And-Object-Storage/s3-lifecycle.md" "# S3 Lifecycle\n- Transitions, expiration, lifecycle rules"
create_if_missing "${root}/03-AWS-S3-And-Object-Storage/s3-encryption.md" "# S3 Encryption\n- SSE-S3, SSE-KMS, SSE-C, client-side"
create_if_missing "${root}/03-AWS-S3-And-Object-Storage/s3-performance.md" "# S3 Performance & Optimization\n- Request rate, prefix guidelines, transfer acceleration"
create_if_missing "${root}/03-AWS-S3-And-Object-Storage/glacier-and-archive.md" "# Glacier & Archive\n- Retrieval tiers, use cases"
create_if_missing "${root}/03-AWS-S3-And-Object-Storage/s3-labs.md" "# S3 Labs\n- Create bucket, lifecycle policy, replication, encryption"

# 04-AWS-VPC-And-Networking
create_if_missing "${root}/04-AWS-VPC-And-Networking/vpc-basics.md" "# VPC Basics\n- CIDR, subnets, AZ mapping"
create_if_missing "${root}/04-AWS-VPC-And-Networking/subnets-routing.md" "# Subnets & Routing\n- Route tables, internet gateway, NAT gateway"
create_if_missing "${root}/04-AWS-VPC-And-Networking/nat-and-internet-gateway.md" "# NAT vs IGW\n- Use cases and costs"
create_if_missing "${root}/04-AWS-VPC-And-Networking/security-groups-vs-nacls.md" "# SG vs NACL\n- Stateful vs stateless"
create_if_missing "${root}/04-AWS-VPC-And-Networking/vpc-peering-transit-gateway.md" "# Peering & Transit Gateway\n- Transitive limitations"
create_if_missing "${root}/04-AWS-VPC-And-Networking/vpc-endpoints-and-privatelink.md" "# VPC Endpoints & PrivateLink\n- Interface vs gateway endpoints"
create_if_missing "${root}/04-AWS-VPC-And-Networking/hybrid-connectivity-vpn-dx.md" "# Hybrid Connectivity\n- VPN, Direct Connect, DX Gateway"
create_if_missing "${root}/04-AWS-VPC-And-Networking/vpc-labs.md" "# VPC Labs\n- Create VPC, public/private subnets, endpoints, NAT"

# 05-AWS-High-Availability-And-ArchDesign
create_if_missing "${root}/05-AWS-High-Availability-And-ArchDesign/ha-multi-az.md" "# High Availability & Multi-AZ\n- RTO/RPO, multi-AZ patterns"
create_if_missing "${root}/05-AWS-High-Availability-And-ArchDesign/multi-region-architecture.md" "# Multi-Region Architecture\n- Active-active vs active-passive"
create_if_missing "${root}/05-AWS-High-Availability-And-ArchDesign/load-balancing-strategies.md" "# Load Balancing Strategies\n- Global & regional load balancing"
create_if_missing "${root}/05-AWS-High-Availability-And-ArchDesign/fault-tolerance-patterns.md" "# Fault Tolerance Patterns\n- Retry, circuit breaker, backoff"
create_if_missing "${root}/05-AWS-High-Availability-And-ArchDesign/cloudfront-and-global-acceleration.md" "# CloudFront & Global Acceleration\n- Use cases, TTLs, invalidation"
create_if_missing "${root}/05-AWS-High-Availability-And-ArchDesign/ha-labs.md" "# HA Labs\n- Deploy multi-AZ web app"

# 06-AWS-Serverless
create_if_missing "${root}/06-AWS-Serverless/lambda-overview.md" "# Lambda Overview\n- Invocation types, packaging, limits"
create_if_missing "${root}/06-AWS-Serverless/lambda-integrations.md" "# Lambda Integrations\n- API Gateway, EventBridge, SQS, SNS"
create_if_missing "${root}/06-AWS-Serverless/api-gateway.md" "# API Gateway\n- REST vs HTTP APIs, throttling, caching"
create_if_missing "${root}/06-AWS-Serverless/dynamodb-basics.md" "# DynamoDB Basics\n- Keys, capacity modes, GSIs"
create_if_missing "${root}/06-AWS-Serverless/dynamodb-advanced.md" "# DynamoDB Advanced\n- DAX, streams, transactions"
create_if_missing "${root}/06-AWS-Serverless/sqs-sns.md" "# SQS & SNS\n- Message patterns, dead-letter queues"
create_if_missing "${root}/06-AWS-Serverless/eventbridge.md" "# EventBridge\n- Event bus, rules, partner events"
create_if_missing "${root}/06-AWS-Serverless/step-functions.md" "# Step Functions\n- Standard vs Express"
create_if_missing "${root}/06-AWS-Serverless/serverless-labs.md" "# Serverless Labs\n- Build Lambda + API Gateway sample"

# 07-AWS-Storage-Services
create_if_missing "${root}/07-AWS-Storage-Services/ebs.md" "# EBS\n- Volumes, performance, snapshots"
create_if_missing "${root}/07-AWS-Storage-Services/efs.md" "# EFS\n- Performance modes, throughput"
create_if_missing "${root}/07-AWS-Storage-Services/fsx.md" "# FSx\n- Windows & Lustre options"
create_if_missing "${root}/07-AWS-Storage-Services/storage-gateway.md" "# Storage Gateway\n- Types and use cases"
create_if_missing "${root}/07-AWS-Storage-Services/block-file-object-comparison.md" "# Block vs File vs Object\n- When to use each"

# 08-AWS-Databases
create_if_missing "${root}/08-AWS-Databases/rds-basics.md" "# RDS Basics\n- Engines, Multi-AZ, read replicas"
create_if_missing "${root}/08-AWS-Databases/rds-backups-multi-az.md" "# RDS Backups & Multi-AZ\n- Snapshots, automated backups"
create_if_missing "${root}/08-AWS-Databases/aurora.md" "# Aurora\n- Global DB, Serverless v2 basics"
create_if_missing "${root}/08-AWS-Databases/dynamodb.md" "# DynamoDB\n- Best practices, single-table design notes"
create_if_missing "${root}/08-AWS-Databases/redshift.md" "# Redshift\n- Clusters, Spectrum, snapshots"
create_if_missing "${root}/08-AWS-Databases/database-labs.md" "# Database Labs\n- RDS multi-AZ, DynamoDB GSI lab"

# 09-AWS-Monitoring-And-Security
create_if_missing "${root}/09-AWS-Monitoring-And-Security/cloudwatch.md" "# CloudWatch\n- Metrics, logs, dashboards, alarms"
create_if_missing "${root}/09-AWS-Monitoring-And-Security/cloudtrail.md" "# CloudTrail\n- Audit trails, event history"
create_if_missing "${root}/09-AWS-Monitoring-And-Security/config.md" "# AWS Config\n- Rules, compliance snapshots"
create_if_missing "${root}/09-AWS-Monitoring-And-Security/guardduty.md" "# GuardDuty\n- Threat detection basics"
create_if_missing "${root}/09-AWS-Monitoring-And-Security/security-hub.md" "# Security Hub\n- Centralized findings"
create_if_missing "${root}/09-AWS-Monitoring-And-Security/kms.md" "# KMS\n- CMKs, grants, encryption patterns"
create_if_missing "${root}/09-AWS-Monitoring-And-Security/shield-and-waf.md" "# Shield & WAF\n- DDoS protection basics"
create_if_missing "${root}/09-AWS-Monitoring-And-Security/monitoring-labs.md" "# Monitoring Labs\n- CloudTrail + Config + CloudWatch setup"

# 10-AWS-Migration-And-Data-Transfer
create_if_missing "${root}/10-AWS-Migration-And-Data-Transfer/snowball.md" "# Snowball & Edge\n- Large data transfer options"
create_if_missing "${root}/10-AWS-Migration-And-Data-Transfer/dms.md" "# DMS\n- Database Migration Service basics"
create_if_missing "${root}/10-AWS-Migration-And-Data-Transfer/data-sync.md" "# DataSync\n- File transfer automation"
create_if_missing "${root}/10-AWS-Migration-And-Data-Transfer/transfer-family.md" "# Transfer Family\n- SFTP/FTPS/FTP use cases"
create_if_missing "${root}/10-AWS-Migration-And-Data-Transfer/migration-patterns.md" "# Migration Patterns\n- Lift-and-shift, replatform, hybrid"

# 11-SAA-Architectures
create_if_missing "${root}/11-SAA-Architectures/well-architected-framework.md" "# Well-Architected Framework\n- 5 pillars: Operational Excellence, Security, Reliability, Performance Efficiency, Cost Optimization"
create_if_missing "${root}/11-SAA-Architectures/ha-architecture.md" "# HA Architecture\n- Patterns and sample diagrams"
create_if_missing "${root}/11-SAA-Architectures/serverless-architecture.md" "# Serverless Architecture\n- Best practices and patterns"
create_if_missing "${root}/11-SAA-Architectures/data-analytics-architecture.md" "# Data Analytics Architecture\n- Common patterns with S3, Glue, Athena, Redshift"
create_if_missing "${root}/11-SAA-Architectures/multi-region-disaster-recovery.md" "# Multi-Region DR\n- RTO/RPO strategies"
create_if_missing "${root}/11-SAA-Architectures/caching-and-performance-patterns.md" "# Caching & Performance\n- CloudFront, ElastiCache, DAX"
create_if_missing "${root}/11-SAA-Architectures/architecture-drawings.md" "# Architecture Drawings\n- Use mermaid or draw.io and store diagrams here"

# 12-Hands-On-Labs
create_if_missing "${root}/12-Hands-On-Labs/lab-ec2.md" "# Lab: EC2\n- Steps: launch instance, attach EBS, create AMI"
create_if_missing "${root}/12-Hands-On-Labs/lab-vpc.md" "# Lab: VPC\n- Steps: create VPC, public/private subnets, NAT, endpoints"
create_if_missing "${root}/12-Hands-On-Labs/lab-s3.md" "# Lab: S3\n- Steps: create bucket, lifecycle, encryption, replication"
create_if_missing "${root}/12-Hands-On-Labs/lab-rds.md" "# Lab: RDS\n- Steps: create RDS Multi-AZ, read replica, snapshot"
create_if_missing "${root}/12-Hands-On-Labs/lab-lambda-api.md" "# Lab: Lambda + API Gateway\n- Steps: create lambda, configure API Gateway, test endpoint"
create_if_missing "${root}/12-Hands-On-Labs/exam-scenario-labs.md" "# Exam Scenario Labs\n- End-to-end sample architectures for mock scenarios"

# 13-Cheat-Sheets
create_if_missing "${root}/13-Cheat-Sheets/s3-cheatsheet.md" "# S3 Cheat Sheet\n- Quick facts and exam tips"
create_if_missing "${root}/13-Cheat-Sheets/vpc-cheatsheet.md" "# VPC Cheat Sheet\n- Quick facts and exam tips"
create_if_missing "${root}/13-Cheat-Sheets/rds-cheatsheet.md" "# RDS Cheat Sheet\n- Quick facts and exam tips"
create_if_missing "${root}/13-Cheat-Sheets/dynamodb-cheatsheet.md" "# DynamoDB Cheat Sheet\n- Quick facts and exam tips"
create_if_missing "${root}/13-Cheat-Sheets/lambda-cheatsheet.md" "# Lambda Cheat Sheet\n- Quick facts and exam tips"
create_if_missing "${root}/13-Cheat-Sheets/exam-shortcuts.md" "# Exam Shortcuts\n- Time management, question strategies"
create_if_missing "${root}/13-Cheat-Sheets/service-comparisons.md" "# Service Comparisons\n- When to use S3 vs EFS vs EBS, RDS vs DynamoDB, ECS vs EKS vs Lambda"

# 14-Practice-Questions
create_if_missing "${root}/14-Practice-Questions/topic-wise-questions.md" "# Topic-wise Questions\n- Add practice questions under headings"
create_if_missing "${root}/14-Practice-Questions/65-saa-exam-scenarios.md" "# 65 Exam Scenarios\n- Curated scenario-based questions"
create_if_missing "${root}/14-Practice-Questions/mock-test-scores.md" "# Mock Test Scores\n| Source | Score | Date | Notes |\n|--------|-------|------|-------|"
create_if_missing "${root}/14-Practice-Questions/exam-review-notes.md" "# Exam Review Notes\n- Mistakes and clarifications from mock tests"

# Final message
cat <<'DONE'

Repository scaffold complete.
- Created folders and starter markdown files.
- Files were not overwritten if they already existed.

Next steps:
1) Review and expand each topic file with notes from Stéphane Maarek's course and AWS docs.
2) Add diagrams to 11-SAA-Architectures (mermaid .md or images in a images/ subfolder).
3) Commit and push:
   git add .
   git commit -m "Scaffold repo structure for AWS SAA prep"
   git push

DONE

