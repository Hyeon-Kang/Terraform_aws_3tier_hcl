## Production Variables
#
#
## Provider Credentials
#
## Common Params
### -.1 공통 서비스 명
#variable "prod_service_Name" {
#  type = string
#  default = "nicole-terraform-test"
#}
#
### -.2 공통 환경 코드
#variable "prod_env_code" {
#  type = string
#  default = "-production"
#}
#
## VPC Params
### 0.1 VPC 명
#variable "prod_pc_name" {
#  type = string
#  default = var.prod_service_Name+var.prod_env_code+"-vpc"
#}
#
### 0.2 VPC Cidr
#variable "prod_vpc_cidr" {
#  type = string
#  default = "10.199.0.16"
#}
#
