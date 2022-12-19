# Provider Credentials

# Common Params
## -.1 공통 서비스 명
variable "project_name" {
  description = "Project Name"
  type = string
  default = "nicole-terraform-test"
}

### -.2 공통 환경 코드
variable "env_code" {
  description = "Each enviroment value by workspace"
  default = {
    dev = "development"
    prod = "production"
  }
}

### -3. 공통 cidr
variable "vpc_cidr" {
  description = "Each vpc_cidr by workspace"
  type = map
  default = {
    dev = "10.99.0.0/16"
    prod  = "10.199.0.0/16"
  }
}

