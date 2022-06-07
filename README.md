# Terraform_aws_3tier_hcl
테라폼 AWS 3Tier 서비스 구축해보기

### Terraform 설치하기 (AWS AMI2)


### 인프라 구축 절차
0. Privider 정의
1. VPC 생성
2. Subnet 생성
3. Internet Gateway 생성
4. EIP(for NAT), NAT 생성
5. Route Table 생성

### Flask Sample

## 테스트 목표
- Public Zone에서 EC2 띄우기
- EC2에 Shell 또는 Python 스크립트 올리기
- ALB를 넘어 Private Zone에서 Flask WEB 호스팅 하기
- NLB를 넘어 Private Zone에서 Flask WAS 호스팅 하기
- MySQL RDS 구축 및 연동

## HCL
### 0. Provider
### 1. VPC
### 2. Subnet
### 3. Internet Gateway (IPv4)
### 4. EIP (for NAT) & NAT Gateway
### 5. Route Table & Association
### 6. Key Pair
### 7. SG
### 8. EIP (for Bastion EC2) & EC2 (Public Bastion)

