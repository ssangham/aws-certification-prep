# 9-Week Study Plan for AWS SAA-C03

## Study Schedule Overview

| Parameter | Value |
|-----------|-------|
| **Start Date** | December 2, 2024 (Monday) |
| **Exam Date** | January 31, 2025 (Friday) |
| **Duration** | 9 weeks |
| **Weekday Study** | 1.5 hours/day (Mon-Fri) |
| **Weekend Study** | 4 hours/day (Sat-Sun) |
| **Weekly Hours** | ~15.5 hours |
| **Total Hours** | ~128 hours |

---

## Weekly Overview

| Week | Dates | Topic | Focus Areas | Hours |
|------|-------|-------|-------------|-------|
| 1 | Dec 2-8 | IAM & AWS Foundations | IAM, Organizations, STS | 15.5h |
| 2 | Dec 9-15 | EC2 & Compute | EC2, EBS, ELB, ASG | 15.5h |
| 3 | Dec 16-22 | S3 & Storage | S3, Glacier, Storage Classes | 15.5h |
| 4 | Dec 23-29 | VPC & Networking | VPC, Subnets, Gateways, Peering | 14h |
| 5 | Dec 30-Jan 5 | Databases | RDS, Aurora, DynamoDB, ElastiCache | 14h |
| 6 | Jan 6-12 | Serverless & Decoupling | Lambda, API GW, SQS, SNS, Step Functions | 15.5h |
| 7 | Jan 13-19 | Security & Monitoring | KMS, CloudWatch, CloudTrail, WAF | 15.5h |
| 8 | Jan 20-26 | HA, DR & Architecture | Route 53, CloudFront, DR, Well-Architected | 15.5h |
| 9 | Jan 27-31 | Review & Exam | Practice Exams, Weak Areas, Final Review | 7h |

---

## Week 1: IAM & AWS Foundations
**December 2-8, 2024**

### Learning Objectives
- Understand AWS global infrastructure
- Master IAM users, groups, roles, and policies
- Learn policy evaluation logic
- Understand AWS Organizations and SCPs
- Know STS and federation options

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Dec 2 | AWS Global Infrastructure (Regions, AZs, Edge) | 1.5h | Maarek Sec 3-4 |
| Tue | Dec 3 | IAM Users, Groups, Policies | 1.5h | Maarek Sec 5 |
| Wed | Dec 4 | IAM Roles, Instance Profiles, MFA | 1.5h | Maarek Sec 5 |
| Thu | Dec 5 | IAM Policy Deep Dive, Policy Simulator | 1.5h | Maarek Sec 25 |
| Fri | Dec 6 | AWS Organizations, SCPs, Control Tower | 1.5h | Maarek Sec 25 |
| Sat | Dec 7 | STS, Federation, Identity Center | 4h | Maarek Sec 25 + Labs |
| Sun | Dec 8 | IAM Hands-on Labs + Practice Questions | 4h | AWS Console + TutorialsDojo |

### Hands-On Labs
- [ ] Create IAM users and groups
- [ ] Write custom IAM policies
- [ ] Set up MFA for users
- [ ] Test IAM Policy Simulator
- [ ] Create cross-account role

### Key Concepts to Master
```
IAM Policy Evaluation:
1. Explicit Deny → DENY
2. Explicit Allow → ALLOW
3. Default → DENY

Policy Types:
- Identity-based (attached to users/groups/roles)
- Resource-based (attached to resources)
- Permission Boundaries (max permissions)
- SCPs (organization guardrails)
```

### Study Notes Location
- `01-AWS-IAM-And-Accounts/iam-basics.md`
- `01-AWS-IAM-And-Accounts/iam-policies.md`
- `01-AWS-IAM-And-Accounts/organizations-and-scp.md`

### Week 1 Checklist
- [ ] Complete Maarek IAM sections
- [ ] Complete hands-on labs
- [ ] Read IAM FAQ
- [ ] Take IAM practice quiz (target: 70%+)
- [ ] Update notes in repo

---

## Week 2: EC2 & Compute
**December 9-15, 2024**

### Learning Objectives
- Understand EC2 instance types and use cases
- Master EC2 pricing models
- Learn EBS volume types and use cases
- Understand ELB types (ALB, NLB, GLB)
- Master Auto Scaling concepts

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Dec 9 | EC2 Basics, Instance Types, AMIs | 1.5h | Maarek Sec 5-6 |
| Tue | Dec 10 | EC2 Pricing (On-Demand, Reserved, Spot, Savings Plans) | 1.5h | Maarek Sec 6 |
| Wed | Dec 11 | Security Groups, User Data, Metadata | 1.5h | Maarek Sec 6 |
| Thu | Dec 12 | EBS Volume Types, Snapshots | 1.5h | Maarek Sec 7 |
| Fri | Dec 13 | EBS Encryption, Multi-Attach, Instance Store | 1.5h | Maarek Sec 7 |
| Sat | Dec 14 | Elastic Load Balancing (ALB, NLB, GLB) | 4h | Maarek Sec 8 |
| Sun | Dec 15 | Auto Scaling Groups + EC2 Labs | 4h | Maarek Sec 9 + Labs |

### Hands-On Labs
- [ ] Launch EC2 with user data (web server)
- [ ] Create and attach EBS volumes
- [ ] Create EBS snapshot and restore
- [ ] Create AMI from instance
- [ ] Set up ALB with 2 EC2 instances
- [ ] Create Auto Scaling Group with scaling policy

### Key Concepts to Master
```
EC2 Instance Types:
- General Purpose (T, M): Balanced
- Compute Optimized (C): CPU-intensive
- Memory Optimized (R, X): In-memory DBs
- Storage Optimized (I, D): High I/O
- Accelerated (P, G): GPU/ML

Pricing (Cost low→high):
Spot < Reserved/Savings < On-Demand < Dedicated

EBS Volume Types:
- gp3/gp2: General purpose SSD
- io2/io1: High performance SSD
- st1: Throughput HDD
- sc1: Cold HDD
```

### Study Notes Location
- `02-AWS-EC2-And-Compute/ec2-fundamentals.md`
- `02-AWS-EC2-And-Compute/ec2-storage.md`
- `02-AWS-EC2-And-Compute/elastic-load-balancing.md`
- `02-AWS-EC2-And-Compute/auto-scaling.md`

### Week 2 Checklist
- [ ] Complete Maarek EC2, EBS, ELB, ASG sections
- [ ] Complete hands-on labs
- [ ] Read EC2 FAQ
- [ ] Take EC2 practice quiz (target: 70%+)
- [ ] Update notes in repo

---

## Week 3: S3 & Storage
**December 16-22, 2024**

### Learning Objectives
- Master S3 storage classes and use cases
- Understand S3 security (policies, ACLs, encryption)
- Learn S3 versioning and replication
- Understand lifecycle policies
- Know S3 performance optimization

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Dec 16 | S3 Basics, Storage Classes | 1.5h | Maarek Sec 12 |
| Tue | Dec 17 | S3 Security (Bucket Policies, Block Public Access) | 1.5h | Maarek Sec 14 |
| Wed | Dec 18 | S3 Versioning, MFA Delete | 1.5h | Maarek Sec 12 |
| Thu | Dec 19 | S3 Replication (CRR, SRR) | 1.5h | Maarek Sec 12 |
| Fri | Dec 20 | S3 Lifecycle Policies, Storage Class Analysis | 1.5h | Maarek Sec 13 |
| Sat | Dec 21 | S3 Encryption, Performance, Transfer Acceleration | 4h | Maarek Sec 13-14 |
| Sun | Dec 22 | Glacier, S3 Labs + Practice Questions | 4h | Labs + TutorialsDojo |

### Hands-On Labs
- [ ] Create S3 bucket with versioning
- [ ] Configure bucket policy for public read
- [ ] Set up static website hosting
- [ ] Configure cross-region replication
- [ ] Create lifecycle policy (Standard → IA → Glacier)
- [ ] Test pre-signed URLs

### Key Concepts to Master
```
S3 Storage Classes (by cost, low→high retrieval):
1. S3 Standard - Frequent access
2. S3 Intelligent-Tiering - Unknown patterns
3. S3 Standard-IA - Infrequent, rapid access
4. S3 One Zone-IA - Infrequent, single AZ
5. S3 Glacier Instant - Archive, milliseconds
6. S3 Glacier Flexible - Archive, minutes-hours
7. S3 Glacier Deep Archive - Archive, 12-48 hours

S3 Encryption:
- SSE-S3: AWS managed keys
- SSE-KMS: KMS managed keys (audit trail)
- SSE-C: Customer provided keys
- Client-side: Encrypt before upload
```

### Study Notes Location
- `03-AWS-S3-And-Object-Storage/s3-basics.md`
- `03-AWS-S3-And-Object-Storage/s3-security.md`
- `03-AWS-S3-And-Object-Storage/s3-lifecycle.md`
- `03-AWS-S3-And-Object-Storage/glacier-and-archive.md`

### Week 3 Checklist
- [ ] Complete Maarek S3 sections
- [ ] Complete hands-on labs
- [ ] Read S3 FAQ
- [ ] Take S3 practice quiz (target: 75%+)
- [ ] Update notes in repo

---

## Week 4: VPC & Networking
**December 23-29, 2024**

### Learning Objectives
- Design VPCs with public/private subnets
- Understand IGW, NAT Gateway, NAT Instance
- Master Security Groups vs NACLs
- Learn VPC Peering and Transit Gateway
- Understand VPC Endpoints and PrivateLink
- Know VPN and Direct Connect options

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Dec 23 | VPC Basics, CIDR, Subnets | 1.5h | Maarek Sec 27 |
| Tue | Dec 24 | Internet Gateway, Route Tables | 1.5h | Maarek Sec 27 |
| Wed | Dec 25 | 🎄 Holiday - Light Review (NAT concepts) | 1h | Notes review |
| Thu | Dec 26 | NAT Gateway vs NAT Instance | 1.5h | Maarek Sec 27 |
| Fri | Dec 27 | Security Groups vs NACLs | 1.5h | Maarek Sec 27 |
| Sat | Dec 28 | VPC Peering, Transit Gateway, Endpoints | 4h | Maarek Sec 27 |
| Sun | Dec 29 | VPN, Direct Connect + VPC Labs | 4h | Maarek Sec 27 + Labs |

### Hands-On Labs
- [ ] Create VPC from scratch (10.0.0.0/16)
- [ ] Create public subnet with IGW
- [ ] Create private subnet with NAT Gateway
- [ ] Configure Security Groups
- [ ] Configure NACLs
- [ ] Create VPC Endpoint for S3
- [ ] Set up VPC Peering between two VPCs

### Key Concepts to Master
```
VPC CIDR: /16 (65,536 IPs) to /28 (16 IPs)

Reserved IPs per subnet (5):
- .0 = Network
- .1 = VPC Router
- .2 = DNS
- .3 = Future
- .255 = Broadcast

Security Group vs NACL:
| Feature        | SG        | NACL      |
|---------------|-----------|-----------|
| Level         | Instance  | Subnet    |
| State         | Stateful  | Stateless |
| Rules         | Allow only| Allow+Deny|
| Evaluation    | All rules | First match|

VPC Connectivity:
- VPC Peering: 1-to-1, non-transitive
- Transit Gateway: Hub-spoke, transitive
- VPN: Encrypted over internet
- Direct Connect: Dedicated private line
```

### Study Notes Location
- `04-AWS-VPC-And-Networking/vpc-basics.md`
- `04-AWS-VPC-And-Networking/security-groups-vs-nacls.md`
- `04-AWS-VPC-And-Networking/vpc-peering-transit-gateway.md`
- `04-AWS-VPC-And-Networking/hybrid-connectivity-vpn-dx.md`

### Week 4 Checklist
- [ ] Complete Maarek VPC section
- [ ] Complete hands-on labs
- [ ] Read VPC FAQ
- [ ] Take VPC practice quiz (target: 75%+)
- [ ] Update notes in repo

---

## Week 5: Databases
**December 30, 2024 - January 5, 2025**

### Learning Objectives
- Understand RDS deployment options
- Master Aurora features and benefits
- Learn DynamoDB concepts (keys, indexes, capacity)
- Understand ElastiCache (Redis vs Memcached)
- Know when to use which database

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Dec 30 | RDS Basics, Engines, Deployments | 1.5h | Maarek Sec 9 |
| Tue | Dec 31 | RDS Multi-AZ, Read Replicas, Backups | 1.5h | Maarek Sec 9 |
| Wed | Jan 1 | 🎆 Holiday - Light Review | 1h | Notes review |
| Thu | Jan 2 | Aurora Features, Global Database, Serverless | 1.5h | Maarek Sec 9 |
| Fri | Jan 3 | ElastiCache (Redis vs Memcached) | 1.5h | Maarek Sec 9 |
| Sat | Jan 4 | DynamoDB Deep Dive (Keys, Indexes, Capacity) | 4h | Maarek Sec 21 |
| Sun | Jan 5 | DynamoDB Advanced (DAX, Streams, Global Tables) + Labs | 4h | Maarek Sec 21 + Labs |

### Hands-On Labs
- [ ] Create RDS MySQL instance
- [ ] Enable Multi-AZ deployment
- [ ] Create Read Replica
- [ ] Create DynamoDB table with GSI
- [ ] Test DynamoDB queries and scans
- [ ] Create ElastiCache Redis cluster

### Key Concepts to Master
```
RDS Multi-AZ vs Read Replica:
| Feature     | Multi-AZ      | Read Replica  |
|-------------|---------------|---------------|
| Purpose     | HA/Failover   | Read scaling  |
| Replication | Synchronous   | Asynchronous  |
| Failover    | Automatic     | Manual promote|
| Cross-Region| No            | Yes           |

Aurora Benefits:
- 5x MySQL, 3x PostgreSQL performance
- 6 copies of data across 3 AZs
- Auto-scaling storage (10GB-128TB)
- Up to 15 read replicas
- Global Database for cross-region

DynamoDB:
- Partition Key (PK): Required, distribution
- Sort Key (SK): Optional, range queries
- GSI: Different PK/SK, own capacity
- LSI: Same PK, different SK, create at table creation
- DAX: In-memory cache, microseconds
```

### Study Notes Location
- `08-AWS-Databases/rds-basics.md`
- `08-AWS-Databases/aurora.md`
- `08-AWS-Databases/dynamodb.md`
- `08-AWS-Databases/elasticache.md`

### Week 5 Checklist
- [ ] Complete Maarek database sections
- [ ] Complete hands-on labs
- [ ] Read RDS and DynamoDB FAQs
- [ ] Take Database practice quiz (target: 75%+)
- [ ] Update notes in repo

---

## Week 6: Serverless & Decoupling
**January 6-12, 2025**

### Learning Objectives
- Master Lambda concepts and limits
- Understand API Gateway integration
- Learn SQS (Standard vs FIFO)
- Understand SNS and fan-out pattern
- Know EventBridge and Step Functions
- Understand Cognito for authentication

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Jan 6 | Lambda Basics, Invocations, Limits | 1.5h | Maarek Sec 19 |
| Tue | Jan 7 | Lambda Integrations, VPC, Versions/Aliases | 1.5h | Maarek Sec 19 |
| Wed | Jan 8 | API Gateway (REST, HTTP, WebSocket) | 1.5h | Maarek Sec 19 |
| Thu | Jan 9 | SQS (Standard, FIFO, DLQ) | 1.5h | Maarek Sec 17 |
| Fri | Jan 10 | SNS, EventBridge | 1.5h | Maarek Sec 17 |
| Sat | Jan 11 | Step Functions, Cognito | 4h | Maarek Sec 19-20 |
| Sun | Jan 12 | Serverless Labs + Practice Questions | 4h | Labs + TutorialsDojo |

### Hands-On Labs
- [ ] Create Lambda function (Python/Node)
- [ ] Create API Gateway REST API
- [ ] Connect Lambda to API Gateway
- [ ] Create SQS queue with Lambda trigger
- [ ] Set up SNS topic with multiple subscribers
- [ ] Create fan-out pattern (SNS → multiple SQS)
- [ ] Build simple Step Functions workflow

### Key Concepts to Master
```
Lambda Limits:
- Memory: 128 MB - 10 GB
- Timeout: 15 minutes max
- Package: 50 MB (zip), 250 MB (unzipped)
- Concurrency: 1000/region (soft limit)

Lambda Invocation Types:
- Synchronous: API GW, ALB (wait for response)
- Asynchronous: S3, SNS, EventBridge (retry 2x)
- Event Source Mapping: SQS, Kinesis (polling)

SQS vs SNS:
| Feature    | SQS          | SNS          |
|------------|--------------|--------------|
| Model      | Queue (pull) | Pub/Sub (push)|
| Consumers  | One per msg  | Many         |
| Persistence| Yes (14 days)| No           |
| Use Case   | Decouple     | Fan-out      |

Fan-Out Pattern:
SNS Topic → SQS Queue 1 → Consumer 1
         → SQS Queue 2 → Consumer 2
         → Lambda → Processing
```

### Study Notes Location
- `06-AWS-Serverless/lambda-overview.md`
- `06-AWS-Serverless/api-gateway.md`
- `06-AWS-Serverless/sqs-sns.md`
- `06-AWS-Serverless/step-functions.md`
- `06-AWS-Serverless/cognito.md`

### Week 6 Checklist
- [ ] Complete Maarek serverless sections
- [ ] Complete hands-on labs
- [ ] Read Lambda and SQS FAQs
- [ ] Take Serverless practice quiz (target: 75%+)
- [ ] Update notes in repo

---

## Week 7: Security & Monitoring
**January 13-19, 2025**

### Learning Objectives
- Master KMS and encryption concepts
- Understand Secrets Manager vs Parameter Store
- Learn CloudWatch (Metrics, Logs, Alarms)
- Understand CloudTrail for auditing
- Know AWS Config for compliance
- Learn security services (GuardDuty, WAF, Shield)

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Jan 13 | KMS (Keys, Encryption, Key Rotation) | 1.5h | Maarek Sec 26 |
| Tue | Jan 14 | Secrets Manager, SSM Parameter Store | 1.5h | Maarek Sec 26 |
| Wed | Jan 15 | CloudWatch (Metrics, Logs, Alarms) | 1.5h | Maarek Sec 24 |
| Thu | Jan 16 | CloudTrail, AWS Config | 1.5h | Maarek Sec 24 |
| Fri | Jan 17 | GuardDuty, Inspector, Macie | 1.5h | Maarek Sec 26 |
| Sat | Jan 18 | WAF, Shield, Security Hub, Firewall Manager | 4h | Maarek Sec 26 |
| Sun | Jan 19 | Security Labs + Practice Questions | 4h | Labs + TutorialsDojo |

### Hands-On Labs
- [ ] Create KMS key and encrypt S3 bucket
- [ ] Store secret in Secrets Manager
- [ ] Create CloudWatch alarm for EC2 CPU
- [ ] Enable CloudTrail with S3 logging
- [ ] Enable AWS Config with rules
- [ ] Enable GuardDuty

### Key Concepts to Master
```
KMS Key Types:
- AWS Managed: Created by AWS services
- Customer Managed: You create and manage
- AWS Owned: AWS internal use

Secrets Manager vs Parameter Store:
| Feature         | Secrets Manager | Parameter Store |
|-----------------|-----------------|-----------------|
| Cost            | $0.40/secret    | Free tier       |
| Rotation        | Automatic       | Manual          |
| Max Size        | 64 KB           | 8 KB (adv: 8KB) |
| Use Case        | DB credentials  | Config values   |

CloudWatch vs CloudTrail vs Config:
- CloudWatch: Performance monitoring
- CloudTrail: API audit logging (who did what)
- Config: Configuration compliance (what changed)

Security Services:
- GuardDuty: Threat detection (ML-based)
- Inspector: Vulnerability scanning
- Macie: S3 data discovery (PII)
- WAF: Web application firewall (Layer 7)
- Shield: DDoS protection
- Security Hub: Central security view
```

### Study Notes Location
- `09-AWS-Monitoring-And-Security/kms.md`
- `09-AWS-Monitoring-And-Security/secrets-manager-ssm.md`
- `09-AWS-Monitoring-And-Security/cloudwatch.md`
- `09-AWS-Monitoring-And-Security/cloudtrail.md`
- `09-AWS-Monitoring-And-Security/shield-and-waf.md`

### Week 7 Checklist
- [ ] Complete Maarek security/monitoring sections
- [ ] Complete hands-on labs
- [ ] Read KMS and CloudWatch documentation
- [ ] Take Security practice quiz (target: 80%+)
- [ ] Update notes in repo

---

## Week 8: HA, DR & Architecture
**January 20-26, 2025**

### Learning Objectives
- Master Route 53 routing policies
- Understand CloudFront and Global Accelerator
- Learn disaster recovery strategies
- Know migration patterns (6 R's)
- Understand Snow Family for data transfer
- Master Well-Architected Framework

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Jan 20 | Route 53 (DNS, Routing Policies, Health Checks) | 1.5h | Maarek Sec 10 |
| Tue | Jan 21 | CloudFront (Origins, Behaviors, OAC) | 1.5h | Maarek Sec 15 |
| Wed | Jan 22 | Global Accelerator, Comparing CF vs GA | 1.5h | Maarek Sec 15 |
| Thu | Jan 23 | DR Strategies (Backup, Pilot Light, Warm, Active) | 1.5h | Maarek Sec 28 |
| Fri | Jan 24 | Snow Family, DataSync, DMS, Migration Patterns | 1.5h | Maarek Sec 16, 22 |
| Sat | Jan 25 | Well-Architected Framework (6 Pillars) | 4h | Maarek Sec 31 + Whitepaper |
| Sun | Jan 26 | Architecture Case Studies + Practice Questions | 4h | Maarek Sec 11, 29 + TutorialsDojo |

### Hands-On Labs
- [ ] Create Route 53 hosted zone
- [ ] Configure different routing policies
- [ ] Create CloudFront distribution for S3
- [ ] Set up health checks

### Key Concepts to Master
```
Route 53 Routing Policies:
- Simple: Single resource
- Weighted: % distribution
- Latency: Lowest latency region
- Failover: Active-passive
- Geolocation: By user location
- Geoproximity: By distance + bias
- Multi-value: Multiple healthy records

CloudFront vs Global Accelerator:
| Feature    | CloudFront       | Global Accelerator |
|------------|------------------|-------------------|
| Protocol   | HTTP/HTTPS       | TCP/UDP           |
| Caching    | Yes              | No                |
| Static IP  | No               | Yes (anycast)     |
| Use Case   | Content delivery | Network performance|

DR Strategies (RTO fastest → slowest):
1. Multi-Site Active-Active (lowest RTO, highest cost)
2. Warm Standby
3. Pilot Light
4. Backup & Restore (highest RTO, lowest cost)

Well-Architected 6 Pillars:
1. Operational Excellence
2. Security
3. Reliability
4. Performance Efficiency
5. Cost Optimization
6. Sustainability
```

### Study Notes Location
- `05-AWS-High-Availability-And-ArchDesign/cloudfront-and-global-acceleration.md`
- `05-AWS-High-Availability-And-ArchDesign/multi-region-architecture.md`
- `10-AWS-Migration-And-Data-Transfer/migration-patterns.md`
- `11-SAA-Architectures/well-architected-framework.md`
- `11-SAA-Architectures/multi-region-disaster-recovery.md`

### Week 8 Checklist
- [ ] Complete Maarek Route 53, CloudFront, DR sections
- [ ] Read Well-Architected Framework whitepaper
- [ ] Complete architecture case studies
- [ ] Take HA/DR practice quiz (target: 80%+)
- [ ] Update notes in repo

---

## Week 9: Final Review & Exam
**January 27-31, 2025**

### Learning Objectives
- Take full-length practice exams
- Identify and review weak areas
- Final review of all cheat sheets
- Mental preparation for exam

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Jan 27 | Full Practice Exam #1 | 2h | TutorialsDojo Set 1 |
| Tue | Jan 28 | Review Exam #1 Wrong Answers | 1.5h | Notes + Documentation |
| Wed | Jan 29 | Full Practice Exam #2 | 2h | TutorialsDojo Set 2 |
| Thu | Jan 30 | Final Review - All Cheat Sheets | 1.5h | 13-Cheat-Sheets folder |
| Fri | Jan 31 | 🎯 **EXAM DAY** | - | Good luck! 🍀 |

### Practice Exam Strategy

**Taking the Exam:**
1. Simulate real conditions (timed, no breaks)
2. Flag difficult questions
3. Don't spend >3 min per question
4. Review all answers at end

**Reviewing Wrong Answers:**
1. Understand why correct answer is right
2. Understand why your answer was wrong
3. Note the topic/service
4. Re-read relevant documentation
5. Update notes in repo

### Target Practice Exam Scores

| Attempt | Target | Action if Below |
|---------|--------|-----------------|
| First | 65-70% | Normal, identify weak areas |
| Second | 75-80% | Review weak areas deeply |
| Third | 80-85% | Ready for exam |
| Fourth | 85%+ | Very ready! |

### Final Review Checklist

**Must Review:**
- [ ] All cheat sheets in `13-Cheat-Sheets/`
- [ ] Service comparison tables
- [ ] Key limits (Lambda, S3, EBS, etc.)
- [ ] Pricing model comparisons
- [ ] DR strategies and RTO/RPO

**Quick Reference:**
- [ ] EC2 instance types and use cases
- [ ] S3 storage classes
- [ ] EBS volume types
- [ ] Database comparison (RDS vs Aurora vs DynamoDB)
- [ ] SQS vs SNS vs Kinesis
- [ ] VPC connectivity options
- [ ] Route 53 routing policies

### Exam Day Preparation

**Night Before:**
- [ ] Get 7-8 hours of sleep
- [ ] Prepare ID and confirmation
- [ ] Know testing location/setup
- [ ] Light review only (no cramming)

**Morning Of:**
- [ ] Eat a good breakfast
- [ ] Arrive early (or setup early for online)
- [ ] Stay calm and confident
- [ ] Trust your preparation

### Week 9 Checklist
- [ ] Complete Practice Exam #1 (target: 75%+)
- [ ] Review all wrong answers from Exam #1
- [ ] Complete Practice Exam #2 (target: 80%+)
- [ ] Review all wrong answers from Exam #2
- [ ] Final cheat sheet review
- [ ] **PASS THE EXAM!** 🎉

---

## Progress Tracking

### Weekly Progress

| Week | Status | Practice Score | Notes |
|------|--------|----------------|-------|
| 1 - IAM | ☐ | | |
| 2 - EC2 | ☐ | | |
| 3 - S3 | ☐ | | |
| 4 - VPC | ☐ | | |
| 5 - DB | ☐ | | |
| 6 - Serverless | ☐ | | |
| 7 - Security | ☐ | | |
| 8 - HA/DR | ☐ | | |
| 9 - Review | ☐ | | |

### Practice Exam Scores

| Date | Exam | Score | Weak Areas |
|------|------|-------|------------|
| | TutorialsDojo #1 | | |
| | TutorialsDojo #2 | | |
| | TutorialsDojo #3 | | |
| | AWS Official | | |

### Domain Confidence (Update Weekly)

| Domain | Week 1 | Week 4 | Week 7 | Week 9 |
|--------|--------|--------|--------|--------|
| 1. Secure Architectures (30%) | ☐ | ☐ | ☐ | ☐ |
| 2. Resilient Architectures (26%) | ☐ | ☐ | ☐ | ☐ |
| 3. High-Performing (24%) | ☐ | ☐ | ☐ | ☐ |
| 4. Cost-Optimized (20%) | ☐ | ☐ | ☐ | ☐ |

**Confidence Scale:** ☐ Not Started | 🔴 Weak | 🟡 Moderate | 🟢 Strong

---

## Adjustment Notes

### If Falling Behind
- Prioritize hands-on labs over passive watching
- Focus on exam domains by weight (Security 30%, Resilient 26%)
- Use 2x speed for review topics
- Skip deep dives on low-weight topics

### If Ahead of Schedule
- Take additional practice exams
- Deep dive into weak areas
- Read additional whitepapers
- Help others in study groups

---

## Post-Exam Plan

### If You Pass 🎉
1. Download digital badge
2. Share on LinkedIn
3. Plan next certification:
   - AWS Solutions Architect Professional (SAP-C02)
   - AWS Developer Associate (DVA-C02)
   - AWS SysOps Administrator (SOA-C02)
4. Use 50% discount voucher for next exam

### If You Need to Retake
1. Review score report (domain breakdown)
2. Focus on lowest-scoring domains
3. Take more practice exams
4. Wait 14 days before retaking
5. You've got this! 💪

---

*Last Updated: December 2024*
