# AWS Solutions Architect Associate (SAA-C03) Exam Overview

## Exam Details

| Attribute | Details |
|-----------|---------|
| **Exam Code** | SAA-C03 |
| **Exam Name** | AWS Certified Solutions Architect - Associate |
| **Duration** | 130 minutes |
| **Questions** | 65 scored + 15 unscored (80 total) |
| **Question Format** | Multiple choice, Multiple response |
| **Passing Score** | 720 out of 1000 (scaled scoring) |
| **Exam Cost** | $150 USD |
| **Validity** | 3 years |
| **Testing Options** | Pearson VUE (test center or online proctored) |
| **Languages** | English, Japanese, Korean, Simplified Chinese |

---

## Exam Domains & Weightings

| Domain | Topic | Weight | Questions (~) |
|--------|-------|--------|---------------|
| 1 | Design Secure Architectures | 30% | ~20 questions |
| 2 | Design Resilient Architectures | 26% | ~17 questions |
| 3 | Design High-Performing Architectures | 24% | ~16 questions |
| 4 | Design Cost-Optimized Architectures | 20% | ~13 questions |

---

## Domain 1: Design Secure Architectures (30%)

### Task Statement 1.1: Design secure access to AWS resources
- Access controls and management across multiple accounts
- AWS federated access and identity services (IAM, IAM Identity Center)
- AWS global infrastructure (Regions, AZs, Edge Locations)
- AWS security best practices (least privilege, shared responsibility)
- Credential management and rotation

**Key Services:**
- IAM (Users, Groups, Roles, Policies)
- AWS Organizations & SCPs
- IAM Identity Center (AWS SSO)
- AWS Directory Service
- Amazon Cognito
- AWS STS

### Task Statement 1.2: Design secure workloads and applications
- Application configuration and credentials security
- AWS service endpoints and networking
- Secure connections to AWS resources
- Security services with appropriate use cases

**Key Services:**
- AWS Secrets Manager
- AWS Systems Manager Parameter Store
- VPC Endpoints (Gateway & Interface)
- AWS PrivateLink
- Amazon Macie
- AWS Certificate Manager (ACM)

### Task Statement 1.3: Determine appropriate data security controls
- Data access and governance
- Data recovery and retention
- Data encryption and key management
- Data compliance requirements

**Key Services:**
- AWS KMS (Customer Managed Keys, AWS Managed Keys)
- AWS CloudHSM
- S3 encryption (SSE-S3, SSE-KMS, SSE-C)
- EBS encryption
- RDS encryption
- AWS Backup

---

## Domain 2: Design Resilient Architectures (26%)

### Task Statement 2.1: Design scalable and loosely coupled architectures
- API creation and management
- Event-driven architectures
- Microservices architecture
- Queuing and messaging concepts
- Serverless technologies and patterns
- Container services

**Key Services:**
- Amazon API Gateway
- Amazon SQS (Standard & FIFO)
- Amazon SNS
- Amazon EventBridge
- AWS Lambda
- AWS Step Functions
- Amazon ECS, EKS, Fargate
- Elastic Load Balancing (ALB, NLB, GLB)

### Task Statement 2.2: Design highly available and/or fault-tolerant architectures
- AWS global infrastructure use cases
- Multi-AZ and multi-Region deployments
- Failover strategies
- Immutable infrastructure patterns
- Load balancing and content distribution
- Database replication strategies

**Key Services:**
- Amazon Route 53 (routing policies, health checks)
- Amazon CloudFront
- AWS Global Accelerator
- Auto Scaling Groups
- RDS Multi-AZ & Read Replicas
- Aurora Global Database
- DynamoDB Global Tables
- S3 Cross-Region Replication

---

## Domain 3: Design High-Performing Architectures (24%)

### Task Statement 3.1: Determine high-performing and/or scalable storage solutions
- Hybrid storage solutions
- Storage tiering and data transfer
- Storage types and characteristics (block, file, object)

**Key Services:**
- Amazon S3 (storage classes, Transfer Acceleration)
- Amazon EBS (volume types: gp3, io2, st1, sc1)
- Amazon EFS
- Amazon FSx (Windows, Lustre, NetApp ONTAP, OpenZFS)
- AWS Storage Gateway
- AWS DataSync
- AWS Snow Family

### Task Statement 3.2: Design high-performing and elastic compute solutions
- AWS compute services with appropriate use cases
- Elasticity patterns (scaling up/down/in/out)
- Container orchestration

**Key Services:**
- Amazon EC2 (instance types, pricing models)
- EC2 Auto Scaling
- AWS Lambda
- Amazon ECS, EKS, Fargate
- AWS Elastic Beanstalk
- AWS Batch

### Task Statement 3.3: Determine high-performing database solutions
- Caching strategies and services
- Data access patterns
- Database scaling and replication
- Database types and use cases (relational, NoSQL, data warehouse)

**Key Services:**
- Amazon RDS (MySQL, PostgreSQL, Oracle, SQL Server, MariaDB)
- Amazon Aurora (MySQL, PostgreSQL compatible)
- Amazon DynamoDB (+ DAX for caching)
- Amazon ElastiCache (Redis, Memcached)
- Amazon Redshift
- Amazon Neptune
- Amazon DocumentDB
- Amazon Keyspaces

### Task Statement 3.4: Determine high-performing and/or scalable network architectures
- Edge networking services
- Network architecture design
- Network connection options

**Key Services:**
- Amazon VPC
- AWS Direct Connect
- AWS Site-to-Site VPN
- AWS Transit Gateway
- Amazon CloudFront
- AWS Global Accelerator
- Elastic Load Balancing

### Task Statement 3.5: Determine high-performing data ingestion and transformation solutions
- Data analytics and visualization services
- Data ingestion patterns
- Data transfer and transformation

**Key Services:**
- Amazon Kinesis (Data Streams, Data Firehose, Data Analytics)
- AWS Glue
- Amazon Athena
- Amazon EMR
- AWS Lake Formation

---

## Domain 4: Design Cost-Optimized Architectures (20%)

### Task Statement 4.1: Design cost-optimized storage solutions
- Access patterns and storage tiering
- Object lifecycle management
- Storage type selection

**Key Concepts:**
- S3 storage classes and lifecycle policies
- S3 Intelligent-Tiering
- EBS volume right-sizing
- Data transfer costs

### Task Statement 4.2: Design cost-optimized compute solutions
- EC2 pricing models and selection
- Serverless vs container vs EC2 decisions
- Right-sizing and elasticity

**Key Concepts:**
- On-Demand vs Reserved vs Spot vs Savings Plans
- Lambda pricing model
- Compute Optimizer recommendations
- Auto Scaling for cost optimization

### Task Statement 4.3: Design cost-optimized database solutions
- Database type selection for cost
- Scaling strategies
- Caching to reduce database load

**Key Concepts:**
- RDS Reserved Instances
- Aurora Serverless for variable workloads
- DynamoDB On-Demand vs Provisioned
- Read replicas to offload reads

### Task Statement 4.4: Design cost-optimized network architectures
- Data transfer costs
- Network service selection
- Network optimization strategies

**Key Concepts:**
- VPC Endpoints to avoid NAT costs
- CloudFront to reduce origin load
- Direct Connect vs VPN cost comparison
- Regional vs cross-region data transfer

---

## Key AWS Services by Category

### Compute
| Service | Use Case |
|---------|----------|
| EC2 | Virtual servers |
| Lambda | Serverless functions |
| ECS/EKS/Fargate | Containers |
| Elastic Beanstalk | PaaS deployments |
| Batch | Batch processing |

### Storage
| Service | Type | Use Case |
|---------|------|----------|
| S3 | Object | Unlimited scalable storage |
| EBS | Block | EC2 persistent storage |
| EFS | File (NFS) | Shared Linux file system |
| FSx | File | Windows/Lustre/NetApp |
| Storage Gateway | Hybrid | On-premises integration |

### Database
| Service | Type | Use Case |
|---------|------|----------|
| RDS | Relational | Traditional RDBMS |
| Aurora | Relational | High-performance MySQL/PostgreSQL |
| DynamoDB | NoSQL | Key-value, serverless |
| ElastiCache | Cache | In-memory caching |
| Redshift | Warehouse | Analytics, OLAP |
| Neptune | Graph | Graph databases |

### Networking
| Service | Use Case |
|---------|----------|
| VPC | Isolated network |
| Route 53 | DNS and routing |
| CloudFront | CDN |
| Global Accelerator | Network performance |
| Direct Connect | Dedicated connection |
| Transit Gateway | Network hub |

### Security
| Service | Use Case |
|---------|----------|
| IAM | Identity and access |
| KMS | Key management |
| Secrets Manager | Secrets storage |
| WAF | Web application firewall |
| Shield | DDoS protection |
| GuardDuty | Threat detection |
| Macie | Data discovery |

### Monitoring & Management
| Service | Use Case |
|---------|----------|
| CloudWatch | Metrics, logs, alarms |
| CloudTrail | API audit logging |
| Config | Configuration compliance |
| Systems Manager | Operations management |
| Trusted Advisor | Best practice checks |

### Integration
| Service | Use Case |
|---------|----------|
| SQS | Message queuing |
| SNS | Pub/sub messaging |
| EventBridge | Event routing |
| Step Functions | Workflow orchestration |
| API Gateway | API management |

---

## Exam Tips & Strategies

### Before the Exam
1. **Take practice exams** - Score 85%+ consistently before booking
2. **Review wrong answers** - Understand why correct answers are right
3. **Read AWS FAQs** - S3, EC2, VPC, RDS, Lambda FAQs are gold
4. **Know the Well-Architected Framework** - All 6 pillars
5. **Understand pricing basics** - Cost optimization is 20% of exam

### During the Exam
1. **Read questions carefully** - Look for keywords:
   - "most cost-effective" → cheapest solution
   - "highest availability" → Multi-AZ, Multi-Region
   - "least operational overhead" → managed/serverless
   - "minimum latency" → caching, CDN, edge
   - "decouple" → SQS, SNS, EventBridge

2. **Eliminate wrong answers** - Usually 2 are obviously wrong

3. **Manage time** - 130 min / 65 questions = ~2 min per question
   - Flag difficult questions
   - Don't spend >3 min on any question
   - Review flagged questions at end

4. **Trust your preparation** - First instinct is often correct

### Common Exam Scenarios

| Scenario | Likely Answer |
|----------|---------------|
| Need HA for database | RDS Multi-AZ |
| Scale read traffic | Read Replicas, ElastiCache |
| Decouple components | SQS, SNS |
| Reduce latency globally | CloudFront, Global Accelerator |
| Cost-effective storage | S3 lifecycle policies |
| Serverless API | Lambda + API Gateway |
| Secure secrets | Secrets Manager (with rotation) |
| Migrate large data | Snow Family |
| Real-time streaming | Kinesis |
| Cross-account access | IAM Roles, Resource policies |

---

## Question Type Examples

### Multiple Choice (1 correct answer)
> A company wants to reduce costs for infrequently accessed data in S3 while maintaining millisecond retrieval times. Which storage class should they use?
> 
> A) S3 Glacier Flexible Retrieval  
> B) S3 Standard-IA  
> C) S3 One Zone-IA  
> D) S3 Glacier Deep Archive

**Answer**: B (S3 Standard-IA provides millisecond access)

### Multiple Response (2+ correct answers)
> A solutions architect needs to design a highly available web application. Which TWO actions should be taken? (Select TWO)
>
> A) Deploy EC2 instances in a single AZ with Auto Scaling  
> B) Deploy EC2 instances across multiple AZs  
> C) Use an Application Load Balancer  
> D) Use a single large EC2 instance  
> E) Store session data on the EC2 instance

**Answer**: B, C (Multi-AZ + Load Balancer for HA)

---

## Exam Day Checklist

### Online Proctored Exam
- [ ] Valid government ID ready
- [ ] Quiet, private room
- [ ] Clear desk (nothing except computer)
- [ ] Stable internet connection
- [ ] Close all applications
- [ ] Disable second monitors
- [ ] Test system requirements 24h before

### Test Center Exam
- [ ] Valid government ID
- [ ] Confirmation email/number
- [ ] Arrive 15-30 minutes early
- [ ] Know the location beforehand

---

## Post-Exam

### If You Pass 🎉
- Download and share your digital badge
- Add to LinkedIn
- Plan for next certification (SAP, SysOps, Developer)
- Receive 50% discount voucher for next exam

### If You Don't Pass
- Review score report for weak areas
- Wait 14 days before retaking
- Focus on lowest-scoring domains
- Take more practice exams
- Don't give up!

---

## Useful Links

- [AWS SAA-C03 Exam Guide (PDF)](https://d1.awsstatic.com/training-and-certification/docs-sa-assoc/AWS-Certified-Solutions-Architect-Associate_Exam-Guide.pdf)
- [AWS SAA-C03 Sample Questions](https://d1.awsstatic.com/training-and-certification/docs-sa-assoc/AWS-Certified-Solutions-Architect-Associate_Sample-Questions.pdf)
- [Schedule Exam - AWS Training](https://www.aws.training/certification)
- [AWS Well-Architected Framework](https://aws.amazon.com/architecture/well-architected/)
- [AWS Whitepapers](https://aws.amazon.com/whitepapers/)
- [AWS FAQs](https://aws.amazon.com/faqs/)

---

## My Exam Details

| Field | Details |
|-------|---------|
| **Scheduled Date** | January 31, 2025 |
| **Testing Method** | ☐ Online / ☐ Test Center |
| **Location** | |
| **Confirmation #** | |

---

*Last Updated: December 2024*
