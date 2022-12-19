# Provider Credentials

# Common Params
## -.1 공통 서비스 명
variable "service_Name" {
  type = string
  default = "nicole-terraform-test"
}

## -.2 공통 환경 코드
variable "env_code" {
  type = string
  default = "-development"
}

# VPC Params
## 0.1 VPC 명
variable "vpc_name" {
  type = string
  default = var.service_Name+var.env_code+"-vpc"
}

## 0.2 VPC Cidr
variable "vpc_cidr" {
  type = string
  default = "10.99.0.16"
}

