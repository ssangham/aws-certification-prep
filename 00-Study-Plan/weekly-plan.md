# 12-Week Study Plan for AWS SAA-C03

## Study Schedule Overview

| Parameter | Value |
|-----------|-------|
| **Start Date** | December 1, 2025 (Monday) |
| **Exam Date** | February 21, 2026 (Saturday) |
| **Duration** | 12 weeks |
| **Weekday Study** | 1.5 hours/day (Mon-Fri) |
| **Weekend Study** | 4 hours/day (Sat-Sun) |
| **Weekly Hours** | ~15.5 hours |
| **Total Hours** | ~180 hours |

---

## Weekly Overview

| Week | Dates | Topic | Focus Areas | Hours |
|------|-------|-------|-------------|-------|
| 1 | Dec 1-7 | AWS Foundations & IAM Basics | Global Infrastructure, IAM Users/Groups/Policies | 15.5h |
| 2 | Dec 8-14 | IAM Advanced & Organizations | Roles, STS, Federation, SCPs | 15.5h |
| 3 | Dec 15-21 | EC2 Fundamentals | Instance Types, Pricing, AMIs, User Data | 15.5h |
| 4 | Dec 22-28 | EC2 Storage & High Availability | EBS, ELB, Auto Scaling | 14h |
| 5 | Dec 29-Jan 4 | S3 Deep Dive | Storage Classes, Security, Versioning, Lifecycle | 14h |
| 6 | Jan 5-11 | VPC & Networking | Subnets, Gateways, SG vs NACL, Endpoints | 15.5h |
| 7 | Jan 12-18 | VPC Advanced & Hybrid | Peering, Transit GW, VPN, Direct Connect | 15.5h |
| 8 | Jan 19-25 | Databases | RDS, Aurora, DynamoDB, ElastiCache, Redshift | 15.5h |
| 9 | Jan 26-Feb 1 | Serverless & Decoupling | Lambda, API GW, SQS, SNS, Step Functions | 15.5h |
| 10 | Feb 2-8 | Security & Monitoring | KMS, CloudWatch, CloudTrail, WAF, Shield | 15.5h |
| 11 | Feb 9-15 | HA, DR & Architecture | Route 53, CloudFront, DR Strategies, Well-Architected | 15.5h |
| 12 | Feb 16-21 | Final Review & Exam | Practice Exams, Weak Areas, Cheat Sheets | 12h |

---

## Week 1: AWS Foundations & IAM Basics
**December 1-7, 2025**

### Learning Objectives
- Understand AWS global infrastructure (Regions, AZs, Edge Locations)
- Set up AWS account with proper security
- Master IAM users, groups, and policies
- Understand policy structure and evaluation

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Dec 1 | AWS Overview, Global Infrastructure | 1.5h | Maarek Sec 3-4 |
| Tue | Dec 2 | AWS Account Setup, Billing Alerts, Free Tier | 1.5h | Maarek Sec 4 + AWS Console |
| Wed | Dec 3 | IAM Introduction, Users, Groups | 1.5h | Maarek Sec 5 |
| Thu | Dec 4 | IAM Policies Structure, JSON Deep Dive | 1.5h | Maarek Sec 5 |
| Fri | Dec 5 | IAM Policy Types, Evaluation Logic | 1.5h | Maarek Sec 5 |
| Sat | Dec 6 | IAM Hands-on: Create Users, Groups, Policies | 4h | AWS Console Labs |
| Sun | Dec 7 | MFA Setup, Password Policies, IAM Quiz | 4h | Labs + TutorialsDojo |

### Hands-On Labs
- [ ] Create AWS account (if not exists)
- [ ] Set up billing alerts
- [ ] Create IAM admin user (stop using root)
- [ ] Create IAM groups (Admins, Developers, ReadOnly)
- [ ] Write custom IAM policy for S3 access
- [ ] Enable MFA for all users
- [ ] Test IAM Policy Simulator

### Key Concepts to Master
```
AWS Global Infrastructure:
- Regions: Geographic locations (us-east-1, eu-west-1)
- Availability Zones: Data centers within regions (us-east-1a, 1b, 1c)
- Edge Locations: CloudFront cache locations (450+)
- Local Zones: Extensions of regions for low latency
- Wavelength Zones: 5G network edge

IAM Policy Structure:
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowS3Read",
      "Effect": "Allow",
      "Action": ["s3:GetObject", "s3:ListBucket"],
      "Resource": ["arn:aws:s3:::bucket-name/*"],
      "Condition": {...}
    }
  ]
}

Policy Evaluation:
1. Explicit Deny → DENY (always wins)
2. Explicit Allow → ALLOW
3. Default → DENY (implicit)
```

### Study Notes Location
- `01-AWS-IAM-And-Accounts/iam-basics.md`
- `01-AWS-IAM-And-Accounts/iam-policies.md`

### Week 1 Checklist
- [ ] Complete Maarek Sections 3-5
- [ ] AWS account properly secured
- [ ] Complete all hands-on labs
- [ ] Read IAM FAQ (key sections)
- [ ] Take IAM basics quiz (target: 65%+)
- [ ] Update notes in repo

---

## Week 2: IAM Advanced & Organizations
**December 8-14, 2025**

### Learning Objectives
- Master IAM roles and assume role
- Understand STS and temporary credentials
- Learn identity federation options
- Master AWS Organizations and SCPs
- Understand permission boundaries

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Dec 8 | IAM Roles, Instance Profiles | 1.5h | Maarek Sec 5, 25 |
| Tue | Dec 9 | STS, AssumeRole, Temporary Credentials | 1.5h | Maarek Sec 25 |
| Wed | Dec 10 | Identity Federation (SAML, Web Identity) | 1.5h | Maarek Sec 25 |
| Thu | Dec 11 | AWS IAM Identity Center (SSO) | 1.5h | Maarek Sec 25 |
| Fri | Dec 12 | AWS Organizations Structure | 1.5h | Maarek Sec 25 |
| Sat | Dec 13 | Service Control Policies (SCPs), Permission Boundaries | 4h | Maarek Sec 25 + Labs |
| Sun | Dec 14 | Cross-Account Access Labs + IAM Practice Questions | 4h | Labs + TutorialsDojo |

### Hands-On Labs
- [ ] Create IAM role for EC2
- [ ] Create cross-account role
- [ ] Test AssumeRole with CLI
- [ ] Set up permission boundary
- [ ] Explore AWS Organizations (if available)

### Key Concepts to Master
```
IAM Role Use Cases:
- EC2 Instance Profile: Apps on EC2 access AWS services
- Cross-Account: Access resources in another account
- Service Role: AWS service accesses other services
- Federation: External users get temporary access

STS API Actions:
- AssumeRole: Cross-account, temporary elevation
- AssumeRoleWithSAML: Enterprise federation
- AssumeRoleWithWebIdentity: Social login (use Cognito)
- GetSessionToken: MFA-protected API access

AWS Organizations:
- Management Account: Pays bills, full control
- Member Accounts: Part of organization
- OUs: Logical grouping of accounts
- SCPs: Permission guardrails (don't grant, only restrict)

SCP Inheritance:
Root → OU → Account
(Effective = intersection of all SCPs in path)
```

### Study Notes Location
- `01-AWS-IAM-And-Accounts/iam-advanced.md`
- `01-AWS-IAM-And-Accounts/sts-and-temporary-credentials.md`
- `01-AWS-IAM-And-Accounts/organizations-and-scp.md`

### Week 2 Checklist
- [ ] Complete Maarek Section 25 (IAM Advanced)
- [ ] Complete cross-account role lab
- [ ] Understand STS use cases
- [ ] Take IAM advanced quiz (target: 70%+)
- [ ] Update notes in repo

---

## Week 3: EC2 Fundamentals
**December 15-21, 2025**

### Learning Objectives
- Understand EC2 instance types and families
- Master EC2 pricing models
- Learn AMI concepts and creation
- Understand user data and metadata
- Master security groups

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Dec 15 | EC2 Overview, Instance Types | 1.5h | Maarek Sec 6 |
| Tue | Dec 16 | EC2 Instance Families Deep Dive | 1.5h | Maarek Sec 6 |
| Wed | Dec 17 | EC2 Pricing (On-Demand, Reserved, Spot, Savings Plans) | 1.5h | Maarek Sec 6 |
| Thu | Dec 18 | Spot Instances, Spot Fleet, Dedicated Hosts | 1.5h | Maarek Sec 6 |
| Fri | Dec 19 | Security Groups, Key Pairs, SSH | 1.5h | Maarek Sec 6 |
| Sat | Dec 20 | AMIs, User Data, Instance Metadata (IMDSv2) | 4h | Maarek Sec 6 + Labs |
| Sun | Dec 21 | EC2 Launch Labs + Practice Questions | 4h | Labs + TutorialsDojo |

### Hands-On Labs
- [ ] Launch EC2 instance (Amazon Linux 2023)
- [ ] Connect via SSH / EC2 Instance Connect
- [ ] Configure security group rules
- [ ] Add user data script (install web server)
- [ ] Query instance metadata
- [ ] Create custom AMI
- [ ] Launch Spot instance

### Key Concepts to Master
```
EC2 Instance Families:
- General Purpose (T, M): Balanced compute/memory
- Compute Optimized (C): CPU-intensive, HPC
- Memory Optimized (R, X, z): In-memory databases
- Storage Optimized (I, D, H): High sequential I/O
- Accelerated (P, G, Inf, Trn): GPU, ML, inference

Instance Naming: m5.xlarge
- m = family
- 5 = generation
- xlarge = size

Pricing Models (Cost: low → high):
1. Spot (up to 90% off) - Can be interrupted
2. Reserved/Savings Plans (up to 72% off) - 1-3 year commit
3. On-Demand - No commitment
4. Dedicated Host - Physical server

Spot Instance Concepts:
- Spot Price: Current market price
- Max Price: Your bid
- Spot Block: 1-6 hours uninterrupted (deprecated)
- Spot Fleet: Mix of Spot + On-Demand
```

### Study Notes Location
- `02-AWS-EC2-And-Compute/ec2-fundamentals.md`
- `02-AWS-EC2-And-Compute/ec2-networking.md`

### Week 3 Checklist
- [ ] Complete Maarek Section 6
- [ ] Launch multiple EC2 instances
- [ ] Create custom AMI
- [ ] Understand all pricing models
- [ ] Read EC2 FAQ
- [ ] Take EC2 basics quiz (target: 70%+)
- [ ] Update notes in repo

---

## Week 4: EC2 Storage & High Availability
**December 22-28, 2025**

### Learning Objectives
- Master EBS volume types and use cases
- Understand EBS snapshots and encryption
- Learn Instance Store vs EBS
- Master Elastic Load Balancing (ALB, NLB, GLB)
- Understand Auto Scaling Groups

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Dec 22 | EBS Volume Types (gp3, io2, st1, sc1) | 1.5h | Maarek Sec 7 |
| Tue | Dec 23 | EBS Snapshots, Encryption, Multi-Attach | 1.5h | Maarek Sec 7 |
| Wed | Dec 24 | Instance Store, EFS vs EBS | 1.5h | Maarek Sec 7 |
| Thu | Dec 25 | 🎄 Holiday - Light Review | 1h | Notes review |
| Fri | Dec 26 | Elastic Load Balancing Overview | 1.5h | Maarek Sec 8 |
| Sat | Dec 27 | ALB, NLB, GLB Deep Dive | 4h | Maarek Sec 8 + Labs |
| Sun | Dec 28 | Auto Scaling Groups + Labs | 4h | Maarek Sec 9 + Labs |

### Hands-On Labs
- [ ] Create and attach EBS volume
- [ ] Resize EBS volume
- [ ] Create EBS snapshot
- [ ] Encrypt unencrypted volume (via snapshot)
- [ ] Create Application Load Balancer
- [ ] Set up target group with health checks
- [ ] Create Auto Scaling Group with scaling policy

### Key Concepts to Master
```
EBS Volume Types:
| Type | Category | Max IOPS | Use Case |
|------|----------|----------|----------|
| gp3  | SSD      | 16,000   | General purpose (most workloads) |
| gp2  | SSD      | 16,000   | Boot volumes (legacy) |
| io2  | SSD      | 256,000  | Databases, critical apps |
| st1  | HDD      | 500      | Big data, logs (throughput) |
| sc1  | HDD      | 250      | Cold data, infrequent access |

EBS vs Instance Store:
| Feature | EBS | Instance Store |
|---------|-----|----------------|
| Persistence | Yes | No (ephemeral) |
| Network | Yes | Local (fastest) |
| Snapshot | Yes | No |
| Use Case | Most workloads | Cache, temp data |

Load Balancer Types:
- ALB (Layer 7): HTTP/HTTPS, path routing, host routing
- NLB (Layer 4): TCP/UDP, ultra-low latency, static IP
- GLB (Layer 3): Network appliances, firewalls
- CLB (Legacy): Don't use for new apps

Auto Scaling Policies:
- Target Tracking: Maintain metric at target (e.g., CPU 50%)
- Step Scaling: Add/remove based on thresholds
- Scheduled: Predictable patterns
- Predictive: ML-based forecasting
```

### Study Notes Location
- `02-AWS-EC2-And-Compute/ec2-storage.md`
- `02-AWS-EC2-And-Compute/elastic-load-balancing.md`
- `02-AWS-EC2-And-Compute/auto-scaling.md`

### Week 4 Checklist
- [ ] Complete Maarek Sections 7-9
- [ ] Complete EBS labs
- [ ] Set up ALB + ASG
- [ ] Understand ELB types
- [ ] Take EC2/ELB quiz (target: 70%+)
- [ ] Update notes in repo

---

## Week 5: S3 Deep Dive
**December 29, 2025 - January 4, 2026**

### Learning Objectives
- Master all S3 storage classes
- Understand S3 security (policies, ACLs, encryption)
- Learn versioning and replication
- Master lifecycle policies
- Understand S3 performance optimization

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Dec 29 | S3 Basics, Buckets, Objects | 1.5h | Maarek Sec 12 |
| Tue | Dec 30 | S3 Storage Classes | 1.5h | Maarek Sec 12 |
| Wed | Dec 31 | S3 Security (Bucket Policies, Block Public Access) | 1.5h | Maarek Sec 14 |
| Thu | Jan 1 | 🎆 Holiday - Light Review | 1h | Notes review |
| Fri | Jan 2 | S3 Encryption (SSE-S3, SSE-KMS, SSE-C) | 1.5h | Maarek Sec 14 |
| Sat | Jan 3 | S3 Versioning, Replication (CRR, SRR) | 4h | Maarek Sec 12-13 |
| Sun | Jan 4 | S3 Lifecycle, Performance, Labs | 4h | Maarek Sec 13 + Labs |

### Hands-On Labs
- [ ] Create S3 bucket with versioning
- [ ] Upload objects, test versioning
- [ ] Configure bucket policy for public read
- [ ] Set up static website hosting
- [ ] Configure cross-region replication
- [ ] Create lifecycle policy
- [ ] Test pre-signed URLs
- [ ] Enable default encryption

### Key Concepts to Master
```
S3 Storage Classes:
| Class | Availability | Min Duration | Retrieval | Use Case |
|-------|--------------|--------------|-----------|----------|
| Standard | 99.99% | None | Instant | Frequent access |
| Intelligent | 99.9% | None | Instant | Unknown pattern |
| Standard-IA | 99.9% | 30 days | Instant | Infrequent |
| One Zone-IA | 99.5% | 30 days | Instant | Reproducible |
| Glacier Instant | 99.9% | 90 days | Milliseconds | Archive, fast |
| Glacier Flexible | 99.99% | 90 days | 1-12 hours | Archive |
| Glacier Deep | 99.99% | 180 days | 12-48 hours | Long-term |

S3 Encryption:
- SSE-S3: AWS managed keys (default)
- SSE-KMS: KMS keys (audit trail, key control)
- SSE-C: Customer-provided keys (you manage)
- Client-side: Encrypt before upload

S3 Replication:
- CRR: Cross-Region Replication (DR, compliance)
- SRR: Same-Region Replication (log aggregation)
- Requires versioning enabled on both buckets

S3 Performance:
- 3,500 PUT/POST/DELETE per prefix/second
- 5,500 GET/HEAD per prefix/second
- Multipart upload: Required >5GB, recommended >100MB
- Transfer Acceleration: CloudFront edge for uploads
- Byte-range fetches: Parallel downloads
```

### Study Notes Location
- `03-AWS-S3-And-Object-Storage/s3-basics.md`
- `03-AWS-S3-And-Object-Storage/s3-security.md`
- `03-AWS-S3-And-Object-Storage/s3-encryption.md`
- `03-AWS-S3-And-Object-Storage/s3-lifecycle.md`

### Week 5 Checklist
- [ ] Complete Maarek Sections 12-14
- [ ] Complete all S3 labs
- [ ] Know all storage classes
- [ ] Read S3 FAQ
- [ ] Take S3 quiz (target: 75%+)
- [ ] Update notes in repo

---

## Week 6: VPC & Networking Fundamentals
**January 5-11, 2026**

### Learning Objectives
- Design VPCs with CIDR blocks
- Create public and private subnets
- Understand Internet Gateway and NAT
- Master Security Groups vs NACLs
- Learn VPC Endpoints

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Jan 5 | VPC Overview, CIDR Blocks | 1.5h | Maarek Sec 27 |
| Tue | Jan 6 | Subnets, Route Tables | 1.5h | Maarek Sec 27 |
| Wed | Jan 7 | Internet Gateway, Public Subnets | 1.5h | Maarek Sec 27 |
| Thu | Jan 8 | NAT Gateway vs NAT Instance | 1.5h | Maarek Sec 27 |
| Fri | Jan 9 | Security Groups Deep Dive | 1.5h | Maarek Sec 27 |
| Sat | Jan 10 | NACLs, SG vs NACL Comparison | 4h | Maarek Sec 27 + Labs |
| Sun | Jan 11 | VPC Endpoints (Gateway, Interface) + Labs | 4h | Maarek Sec 27 + Labs |

### Hands-On Labs
- [ ] Create VPC from scratch (10.0.0.0/16)
- [ ] Create public subnet (10.0.1.0/24)
- [ ] Create private subnet (10.0.2.0/24)
- [ ] Attach Internet Gateway
- [ ] Create and configure route tables
- [ ] Set up NAT Gateway
- [ ] Configure Security Groups
- [ ] Create NACL rules
- [ ] Create S3 Gateway Endpoint

### Key Concepts to Master
```
VPC CIDR:
- Range: /16 (65,536 IPs) to /28 (16 IPs)
- Cannot change primary CIDR after creation
- Can add secondary CIDRs

Reserved IPs per Subnet (5):
- .0 = Network address
- .1 = VPC router
- .2 = DNS server
- .3 = Reserved for future
- .255 = Broadcast (not supported)

Public vs Private Subnet:
- Public: Has route to IGW (0.0.0.0/0 → igw-xxx)
- Private: No route to IGW, uses NAT for outbound

NAT Gateway vs NAT Instance:
| Feature | NAT Gateway | NAT Instance |
|---------|-------------|--------------|
| Managed | Yes | No |
| HA | Per AZ | Manual |
| Bandwidth | Up to 100 Gbps | Instance type |
| Cost | Higher | Lower |
| Bastion | No | Yes |

Security Group vs NACL:
| Feature | Security Group | NACL |
|---------|---------------|------|
| Level | Instance/ENI | Subnet |
| State | Stateful | Stateless |
| Rules | Allow only | Allow + Deny |
| Evaluation | All rules | First match |
| Default | Deny all in | Allow all |
```

### Study Notes Location
- `04-AWS-VPC-And-Networking/vpc-basics.md`
- `04-AWS-VPC-And-Networking/subnets-routing.md`
- `04-AWS-VPC-And-Networking/nat-and-internet-gateway.md`
- `04-AWS-VPC-And-Networking/security-groups-vs-nacls.md`
- `04-AWS-VPC-And-Networking/vpc-endpoints-and-privatelink.md`

### Week 6 Checklist
- [ ] Complete Maarek Section 27 (first half)
- [ ] Build complete VPC from scratch
- [ ] Understand SG vs NACL
- [ ] Read VPC FAQ
- [ ] Take VPC basics quiz (target: 70%+)
- [ ] Update notes in repo

---

## Week 7: VPC Advanced & Hybrid Connectivity
**January 12-18, 2026**

### Learning Objectives
- Master VPC Peering
- Understand Transit Gateway
- Learn VPN and Direct Connect
- Understand VPC Flow Logs
- Know PrivateLink and endpoint services

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Jan 12 | VPC Peering | 1.5h | Maarek Sec 27 |
| Tue | Jan 13 | Transit Gateway | 1.5h | Maarek Sec 27 |
| Wed | Jan 14 | Site-to-Site VPN | 1.5h | Maarek Sec 27 |
| Thu | Jan 15 | Direct Connect | 1.5h | Maarek Sec 27 |
| Fri | Jan 16 | AWS PrivateLink, VPC Flow Logs | 1.5h | Maarek Sec 27 |
| Sat | Jan 17 | Network Connectivity Comparison + Labs | 4h | Maarek Sec 27 + Labs |
| Sun | Jan 18 | VPC Complete Labs + Practice Questions | 4h | Labs + TutorialsDojo |

### Hands-On Labs
- [ ] Create VPC Peering between two VPCs
- [ ] Update route tables for peering
- [ ] Enable VPC Flow Logs
- [ ] Create Interface Endpoint (e.g., for SSM)

### Key Concepts to Master
```
VPC Peering:
- 1-to-1 connection between VPCs
- Non-transitive (A↔B, B↔C ≠ A↔C)
- No overlapping CIDRs
- Can be cross-account, cross-region
- Must update route tables on both sides

Transit Gateway:
- Hub-and-spoke connectivity
- Transitive routing supported
- Connect VPCs + VPN + Direct Connect
- Regional resource (can peer cross-region)
- Supports multicast

VPN vs Direct Connect:
| Feature | VPN | Direct Connect |
|---------|-----|----------------|
| Setup | Minutes | Weeks/Months |
| Connection | Over internet | Dedicated |
| Encryption | IPsec (built-in) | Optional (add VPN) |
| Bandwidth | Up to 1.25 Gbps | 1-100 Gbps |
| Latency | Variable | Consistent |
| Cost | Low | High |

VPC Endpoints:
- Gateway Endpoint: S3, DynamoDB (free, uses route tables)
- Interface Endpoint: Most services (ENI, hourly cost)
- PrivateLink: Expose your service to other VPCs
```

### Study Notes Location
- `04-AWS-VPC-And-Networking/vpc-peering-transit-gateway.md`
- `04-AWS-VPC-And-Networking/hybrid-connectivity-vpn-dx.md`

### Week 7 Checklist
- [ ] Complete Maarek Section 27 (remaining)
- [ ] Complete VPC Peering lab
- [ ] Understand all connectivity options
- [ ] Take VPC advanced quiz (target: 75%+)
- [ ] Update notes in repo

---

## Week 8: Databases
**January 19-25, 2026**

### Learning Objectives
- Master RDS deployment and HA options
- Understand Aurora features
- Learn DynamoDB concepts and patterns
- Understand ElastiCache
- Know Redshift basics

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Jan 19 | RDS Overview, Engines, Deployments | 1.5h | Maarek Sec 9 |
| Tue | Jan 20 | RDS Multi-AZ, Read Replicas, Backups | 1.5h | Maarek Sec 9 |
| Wed | Jan 21 | RDS Security, Encryption, IAM Auth | 1.5h | Maarek Sec 9 |
| Thu | Jan 22 | Aurora Features, Serverless, Global | 1.5h | Maarek Sec 9 |
| Fri | Jan 23 | ElastiCache (Redis vs Memcached) | 1.5h | Maarek Sec 9 |
| Sat | Jan 24 | DynamoDB Deep Dive (Keys, Indexes, Capacity) | 4h | Maarek Sec 21 |
| Sun | Jan 25 | DynamoDB Advanced + Redshift + Labs | 4h | Maarek Sec 21-22 + Labs |

### Hands-On Labs
- [ ] Create RDS MySQL instance
- [ ] Enable Multi-AZ
- [ ] Create Read Replica
- [ ] Test failover
- [ ] Create DynamoDB table
- [ ] Add GSI to DynamoDB table
- [ ] Create ElastiCache Redis cluster

### Key Concepts to Master
```
RDS Multi-AZ vs Read Replicas:
| Feature | Multi-AZ | Read Replica |
|---------|----------|--------------|
| Purpose | HA/Failover | Read scaling |
| Replication | Synchronous | Asynchronous |
| Failover | Automatic | Manual (promote) |
| Cross-Region | No | Yes |
| Read Traffic | No | Yes |

Aurora Features:
- 5x MySQL, 3x PostgreSQL performance
- Storage: 10GB - 128TB, auto-scaling
- 6 copies of data across 3 AZs
- Up to 15 read replicas (vs 5 for RDS)
- Aurora Serverless: Auto-scaling compute
- Aurora Global: Cross-region, <1s replication

DynamoDB:
- Partition Key (PK): Required, determines partition
- Sort Key (SK): Optional, enables range queries
- GSI: Different PK/SK, create anytime, own capacity
- LSI: Same PK, different SK, create at table time
- DAX: In-memory cache, microsecond reads
- Streams: Capture changes, trigger Lambda
- Global Tables: Multi-region, multi-master

ElastiCache:
| Feature | Redis | Memcached |
|---------|-------|-----------|
| Persistence | Yes | No |
| Replication | Yes | No |
| Multi-AZ | Yes | No |
| Data Types | Complex | Simple |
| Pub/Sub | Yes | No |
```

### Study Notes Location
- `08-AWS-Databases/rds-basics.md`
- `08-AWS-Databases/rds-backups-multi-az.md`
- `08-AWS-Databases/aurora.md`
- `08-AWS-Databases/dynamodb.md`
- `08-AWS-Databases/elasticache.md`
- `08-AWS-Databases/redshift.md`

### Week 8 Checklist
- [ ] Complete Maarek Sections 9, 21-22
- [ ] Complete database labs
- [ ] Read RDS and DynamoDB FAQs
- [ ] Take Database quiz (target: 75%+)
- [ ] Update notes in repo

---

## Week 9: Serverless & Decoupling
**January 26 - February 1, 2026**

### Learning Objectives
- Master Lambda concepts and integrations
- Understand API Gateway
- Learn SQS patterns (Standard, FIFO)
- Understand SNS and fan-out
- Know Step Functions and EventBridge

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Jan 26 | Lambda Basics, Handler, Invocations | 1.5h | Maarek Sec 19 |
| Tue | Jan 27 | Lambda Limits, Versions, Aliases, VPC | 1.5h | Maarek Sec 19 |
| Wed | Jan 28 | Lambda Integrations (S3, DynamoDB, SQS) | 1.5h | Maarek Sec 19 |
| Thu | Jan 29 | API Gateway (REST, HTTP, WebSocket) | 1.5h | Maarek Sec 19 |
| Fri | Jan 30 | SQS (Standard, FIFO, DLQ, Visibility Timeout) | 1.5h | Maarek Sec 17 |
| Sat | Jan 31 | SNS, EventBridge, Kinesis | 4h | Maarek Sec 17 |
| Sun | Feb 1 | Step Functions, Cognito + Labs | 4h | Maarek Sec 19-20 + Labs |

### Hands-On Labs
- [ ] Create Lambda function (Python or Node.js)
- [ ] Create API Gateway REST API
- [ ] Connect Lambda to API Gateway
- [ ] Create SQS queue
- [ ] Set up Lambda SQS trigger
- [ ] Create SNS topic with subscriptions
- [ ] Build fan-out pattern (SNS → SQS)
- [ ] Create simple Step Functions workflow

### Key Concepts to Master
```
Lambda Limits:
- Memory: 128 MB - 10 GB
- Timeout: 15 minutes max
- Package: 50 MB (zip), 250 MB (unzipped)
- Container: 10 GB
- Concurrency: 1000/region (soft limit)
- /tmp storage: 512 MB - 10 GB

Lambda Invocation Types:
- Synchronous: API GW, ALB, CloudFront (wait for response)
- Asynchronous: S3, SNS, EventBridge (retry 2x, DLQ)
- Event Source Mapping: SQS, Kinesis, DynamoDB Streams (polling)

SQS:
- Standard: Unlimited throughput, at-least-once, best-effort order
- FIFO: 300 msg/s (3000 with batching), exactly-once, ordered
- Visibility Timeout: 0s - 12h (default 30s)
- Message Retention: 1 min - 14 days (default 4 days)
- Long Polling: 1-20 seconds (reduces empty responses)
- Dead Letter Queue: Failed messages after max receives

SQS vs SNS vs EventBridge:
| Service | Model | Use Case |
|---------|-------|----------|
| SQS | Queue (pull) | Decouple, buffer |
| SNS | Pub/Sub (push) | Fan-out, notifications |
| EventBridge | Event bus | Event routing, scheduling |

Fan-Out Pattern:
SNS Topic → SQS Queue 1 → Consumer 1
         → SQS Queue 2 → Consumer 2
         → Lambda → Processing
```

### Study Notes Location
- `06-AWS-Serverless/lambda-overview.md`
- `06-AWS-Serverless/lambda-integrations.md`
- `06-AWS-Serverless/api-gateway.md`
- `06-AWS-Serverless/sqs-sns.md`
- `06-AWS-Serverless/eventbridge.md`
- `06-AWS-Serverless/step-functions.md`

### Week 9 Checklist
- [ ] Complete Maarek Sections 17, 19-20
- [ ] Build serverless API
- [ ] Implement fan-out pattern
- [ ] Read Lambda and SQS FAQs
- [ ] Take Serverless quiz (target: 75%+)
- [ ] Update notes in repo

---

## Week 10: Security & Monitoring
**February 2-8, 2026**

### Learning Objectives
- Master KMS and encryption
- Understand Secrets Manager vs Parameter Store
- Learn CloudWatch thoroughly
- Understand CloudTrail and Config
- Know security services (WAF, Shield, GuardDuty)

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Feb 2 | KMS (Keys, Encryption, Rotation) | 1.5h | Maarek Sec 26 |
| Tue | Feb 3 | Secrets Manager, SSM Parameter Store | 1.5h | Maarek Sec 26 |
| Wed | Feb 4 | CloudWatch Metrics, Logs, Alarms | 1.5h | Maarek Sec 24 |
| Thu | Feb 5 | CloudWatch Agent, Logs Insights | 1.5h | Maarek Sec 24 |
| Fri | Feb 6 | CloudTrail, AWS Config | 1.5h | Maarek Sec 24 |
| Sat | Feb 7 | GuardDuty, Inspector, Macie, Security Hub | 4h | Maarek Sec 26 |
| Sun | Feb 8 | WAF, Shield, Firewall Manager + Labs | 4h | Maarek Sec 26 + Labs |

### Hands-On Labs
- [ ] Create KMS customer managed key
- [ ] Encrypt S3 bucket with KMS
- [ ] Store secret in Secrets Manager
- [ ] Store parameter in SSM Parameter Store
- [ ] Create CloudWatch alarm for EC2
- [ ] Create CloudWatch dashboard
- [ ] Enable CloudTrail with S3 logging
- [ ] Enable AWS Config with rules
- [ ] Enable GuardDuty

### Key Concepts to Master
```
KMS Key Types:
- AWS Managed: Created by AWS services (aws/s3, aws/ebs)
- Customer Managed: You create and manage
- AWS Owned: AWS internal use (not visible)

Envelope Encryption:
1. Generate data key from CMK
2. Encrypt data with data key
3. Store encrypted data key with data
4. Decrypt: Use CMK to decrypt data key, then data

Secrets Manager vs Parameter Store:
| Feature | Secrets Manager | Parameter Store |
|---------|-----------------|-----------------|
| Cost | $0.40/secret/mo | Free tier |
| Rotation | Automatic | Manual |
| Size | 64 KB | 4 KB (8 KB advanced) |
| Use Case | DB credentials | Config values |

CloudWatch vs CloudTrail vs Config:
- CloudWatch: Performance metrics and logs
- CloudTrail: API audit log (who did what)
- Config: Configuration history (what changed)

Security Services:
- GuardDuty: Threat detection (ML-based)
- Inspector: Vulnerability scanning (EC2, ECR, Lambda)
- Macie: S3 data discovery (PII detection)
- WAF: Web application firewall (Layer 7)
- Shield: DDoS protection (Standard free, Advanced $3K/mo)
- Security Hub: Central security view
- Firewall Manager: Manage WAF rules across accounts
```

### Study Notes Location
- `09-AWS-Monitoring-And-Security/kms.md`
- `09-AWS-Monitoring-And-Security/secrets-manager-ssm.md`
- `09-AWS-Monitoring-And-Security/cloudwatch.md`
- `09-AWS-Monitoring-And-Security/cloudtrail.md`
- `09-AWS-Monitoring-And-Security/config.md`
- `09-AWS-Monitoring-And-Security/guardduty.md`
- `09-AWS-Monitoring-And-Security/shield-and-waf.md`

### Week 10 Checklist
- [ ] Complete Maarek Sections 24, 26
- [ ] Complete security labs
- [ ] Understand monitoring differences
- [ ] Take Security quiz (target: 80%+)
- [ ] Update notes in repo

---

## Week 11: HA, DR & Architecture
**February 9-15, 2026**

### Learning Objectives
- Master Route 53 routing policies
- Understand CloudFront and Global Accelerator
- Learn DR strategies
- Know migration patterns
- Master Well-Architected Framework

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Feb 9 | Route 53 Overview, Record Types | 1.5h | Maarek Sec 10 |
| Tue | Feb 10 | Route 53 Routing Policies | 1.5h | Maarek Sec 10 |
| Wed | Feb 11 | Route 53 Health Checks, Failover | 1.5h | Maarek Sec 10 |
| Thu | Feb 12 | CloudFront (Origins, Behaviors, OAC) | 1.5h | Maarek Sec 15 |
| Fri | Feb 13 | Global Accelerator, CloudFront vs GA | 1.5h | Maarek Sec 15 |
| Sat | Feb 14 | DR Strategies, Snow Family, Migration | 4h | Maarek Sec 16, 28 |
| Sun | Feb 15 | Well-Architected Framework + Architecture Case Studies | 4h | Maarek Sec 31 + Labs |

### Hands-On Labs
- [ ] Create Route 53 hosted zone
- [ ] Configure weighted routing policy
- [ ] Set up health checks
- [ ] Create CloudFront distribution for S3
- [ ] Configure OAC for CloudFront → S3

### Key Concepts to Master
```
Route 53 Routing Policies:
- Simple: Single resource, no health checks
- Weighted: Distribute % of traffic
- Latency: Route to lowest latency region
- Failover: Active-passive with health checks
- Geolocation: Route by user location
- Geoproximity: Route by distance + bias
- Multi-value: Return multiple healthy records
- IP-based: Route by client IP ranges

CloudFront vs Global Accelerator:
| Feature | CloudFront | Global Accelerator |
|---------|------------|-------------------|
| Layer | 7 (HTTP/S) | 4 (TCP/UDP) |
| Caching | Yes | No |
| Static IP | No | Yes (anycast) |
| Use Case | Content delivery | Network performance |

DR Strategies (RTO: fastest → slowest):
1. Multi-Site Active-Active: Both regions serve traffic
2. Warm Standby: Scaled-down copy running
3. Pilot Light: Core components running
4. Backup & Restore: Restore from backups

Well-Architected 6 Pillars:
1. Operational Excellence: Run and monitor systems
2. Security: Protect information and systems
3. Reliability: Recover from failures
4. Performance Efficiency: Use resources efficiently
5. Cost Optimization: Avoid unnecessary costs
6. Sustainability: Minimize environmental impact

Migration 6 R's:
1. Rehost: Lift and shift
2. Replatform: Lift and optimize
3. Repurchase: Move to SaaS
4. Refactor: Re-architect for cloud
5. Retire: Decommission
6. Retain: Keep on-premises
```

### Study Notes Location
- `05-AWS-High-Availability-And-ArchDesign/cloudfront-and-global-acceleration.md`
- `05-AWS-High-Availability-And-ArchDesign/multi-region-architecture.md`
- `10-AWS-Migration-And-Data-Transfer/migration-patterns.md`
- `10-AWS-Migration-And-Data-Transfer/snowball.md`
- `11-SAA-Architectures/well-architected-framework.md`
- `11-SAA-Architectures/multi-region-disaster-recovery.md`

### Week 11 Checklist
- [ ] Complete Maarek Sections 10, 15-16, 28, 31
- [ ] Read Well-Architected Framework whitepaper
- [ ] Know all Route 53 routing policies
- [ ] Understand DR strategies and RTO/RPO
- [ ] Take HA/DR quiz (target: 80%+)
- [ ] Update notes in repo

---

## Week 12: Final Review & Exam
**February 16-21, 2026**

### Learning Objectives
- Take multiple full practice exams
- Identify and strengthen weak areas
- Final review of all materials
- Mental preparation for exam

### Daily Schedule

| Day | Date | Topic | Time | Resources |
|-----|------|-------|------|-----------|
| Mon | Feb 16 | Full Practice Exam #1 | 2.5h | TutorialsDojo Set 1 |
| Tue | Feb 17 | Review Exam #1 - Focus on Wrong Answers | 2h | Notes + Docs |
| Wed | Feb 18 | Full Practice Exam #2 | 2.5h | TutorialsDojo Set 2 |
| Thu | Feb 19 | Review Exam #2 - Strengthen Weak Areas | 2h | Notes + Docs |
| Fri | Feb 20 | Final Review - All Cheat Sheets | 2h | 13-Cheat-Sheets |
| Sat | Feb 21 | 🎯 **EXAM DAY** | - | Good luck! 🍀 |

### Practice Exam Strategy

**Taking Practice Exams:**
1. Simulate real conditions (130 min, no interruptions)
2. No references or notes
3. Flag difficult questions
4. Don't spend >3 min per question
5. Review all answers at end

**Reviewing Wrong Answers:**
1. Read correct answer explanation
2. Understand why your answer was wrong
3. Note the topic/service area
4. Re-read relevant documentation
5. Update your notes

### Target Practice Exam Scores

| Exam | Target Score | Ready for Exam? |
|------|--------------|-----------------|
| Practice Exam #1 | 75%+ | Getting close |
| Practice Exam #2 | 80%+ | Almost ready |
| Practice Exam #3 | 85%+ | Ready! |
| AWS Official | 80%+ | Ready! |

### Final Review Checklist

**Must Review:**
- [ ] All cheat sheets in `13-Cheat-Sheets/`
- [ ] Service comparison tables
- [ ] Key limits and numbers
- [ ] Pricing model comparisons
- [ ] DR strategies and RTO/RPO

**Quick Reference Cards:**
- [ ] EC2 instance types and use cases
- [ ] S3 storage classes and retrieval times
- [ ] EBS volume types and IOPS
- [ ] Database comparison matrix
- [ ] SQS vs SNS vs Kinesis vs EventBridge
- [ ] VPC connectivity options
- [ ] Route 53 routing policies
- [ ] Security services overview

### Exam Day Preparation

**Day Before (Feb 20):**
- [ ] Light review only (no cramming!)
- [ ] Prepare valid government ID
- [ ] Know testing location or check online setup
- [ ] Get 7-8 hours of sleep
- [ ] Prepare comfortable clothes

**Exam Day (Feb 21):**
- [ ] Eat a good breakfast
- [ ] Arrive 30 minutes early (or set up early for online)
- [ ] Use bathroom before starting
- [ ] Read each question carefully
- [ ] Trust your preparation
- [ ] Stay calm and confident

### Exam Day Tips
1. **Read questions carefully** - Look for keywords
2. **Eliminate wrong answers** - Usually 2 are obviously wrong
3. **Manage time** - 130 min / 65 questions = 2 min each
4. **Flag and move on** - Don't spend >3 min on any question
5. **Review flagged** - Use remaining time to review
6. **Trust yourself** - First instinct is often correct

### Week 12 Checklist
- [ ] Complete Practice Exam #1 (target: 75%+)
- [ ] Review all wrong answers from Exam #1
- [ ] Complete Practice Exam #2 (target: 80%+)
- [ ] Review all wrong answers from Exam #2
- [ ] Complete final cheat sheet review
- [ ] Good night's sleep before exam
- [ ] **PASS THE EXAM!** 🎉

---

## Progress Tracking

### Weekly Progress

| Week | Dates | Topic | Hours | Status | Quiz Score |
|------|-------|-------|-------|--------|------------|
| 1 | Dec 1-7 | AWS Foundations & IAM Basics | 15.5h | ☐ | |
| 2 | Dec 8-14 | IAM Advanced & Organizations | 15.5h | ☐ | |
| 3 | Dec 15-21 | EC2 Fundamentals | 15.5h | ☐ | |
| 4 | Dec 22-28 | EC2 Storage & HA | 14h | ☐ | |
| 5 | Dec 29-Jan 4 | S3 Deep Dive | 14h | ☐ | |
| 6 | Jan 5-11 | VPC Fundamentals | 15.5h | ☐ | |
| 7 | Jan 12-18 | VPC Advanced | 15.5h | ☐ | |
| 8 | Jan 19-25 | Databases | 15.5h | ☐ | |
| 9 | Jan 26-Feb 1 | Serverless | 15.5h | ☐ | |
| 10 | Feb 2-8 | Security & Monitoring | 15.5h | ☐ | |
| 11 | Feb 9-15 | HA, DR & Architecture | 15.5h | ☐ | |
| 12 | Feb 16-21 | Review & Exam | 12h | ☐ | |

**Total Planned Hours: ~180 hours**

### Practice Exam Log

| Date | Exam | Score | Time | Weak Areas |
|------|------|-------|------|------------|
| | TutorialsDojo #1 | | | |
| | TutorialsDojo #2 | | | |
| | TutorialsDojo #3 | | | |
| | TutorialsDojo #4 | | | |
| | AWS Official | | | |

### Domain Confidence Tracker

| Domain | Weight | Week 4 | Week 8 | Week 11 | Final |
|--------|--------|--------|--------|---------|-------|
| 1. Secure Architectures | 30% | ☐ | ☐ | ☐ | ☐ |
| 2. Resilient Architectures | 26% | ☐ | ☐ | ☐ | ☐ |
| 3. High-Performing | 24% | ☐ | ☐ | ☐ | ☐ |
| 4. Cost-Optimized | 20% | ☐ | ☐ | ☐ | ☐ |

**Confidence Scale:** 🔴 Weak | 🟡 Moderate | 🟢 Strong

---

## Adjustment Strategies

### If Falling Behind
1. Focus on high-weight domains first (Security 30%, Resilient 26%)
2. Watch videos at 1.5x-2x speed for familiar topics
3. Skip deep dives on low-priority topics
4. Prioritize hands-on labs over passive watching
5. Use weekends to catch up

### If Ahead of Schedule
1. Take additional practice exams
2. Deep dive into weak areas
3. Read additional whitepapers
4. Complete AWS SkillBuilder labs
5. Help others in study groups

### Dealing with Holidays
- Dec 25 (Christmas): Light review only
- Jan 1 (New Year): Light review only
- Built buffer time in 12-week plan

---

## Post-Exam Plan

### If You Pass 🎉
1. Download digital badge from Credly
2. Add certification to LinkedIn
3. Update resume
4. Celebrate your achievement!
5. Plan next certification:
   - AWS Solutions Architect Professional (SAP-C02)
   - AWS Developer Associate (DVA-C02)
   - AWS SysOps Administrator (SOA-C02)
6. Use 50% discount voucher for next exam

### If You Need to Retake
1. Don't be discouraged - many pass on 2nd attempt
2. Review score report (domain breakdown)
3. Focus on lowest-scoring domains
4. Take more practice exams
5. Wait 14 days before retaking
6. Consider different study resources
7. You've got this! 💪

---

## Notes & Reflections

### Weekly Reflections

**Week 1:**
```
What went well:
What was challenging:
Adjustments needed:
```

**Week 2:**
```
What went well:
What was challenging:
Adjustments needed:
```

**Week 3:**
```
What went well:
What was challenging:
Adjustments needed:
```

**Week 4:**
```
What went well:
What was challenging:
Adjustments needed:
```

**Week 5:**
```
What went well:
What was challenging:
Adjustments needed:
```

**Week 6:**
```
What went well:
What was challenging:
Adjustments needed:
```

**Week 7:**
```
What went well:
What was challenging:
Adjustments needed:
```

**Week 8:**
```
What went well:
What was challenging:
Adjustments needed:
```

**Week 9:**
```
What went well:
What was challenging:
Adjustments needed:
```

**Week 10:**
```
What went well:
What was challenging:
Adjustments needed:
```

**Week 11:**
```
What went well:
What was challenging:
Adjustments needed:
```

**Week 12:**
```
Final thoughts before exam:
Confidence level:
```

---

*Plan Created: December 1, 2025*
*Exam Date: February 21, 2026*
*Last Updated: December 2025*
