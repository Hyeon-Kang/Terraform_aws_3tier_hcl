

## Public
resource "aws_subnet" "project_public_subnet" {
  count = length(var.az_code)
  vpc_id = aws_vpc.project_vpc.id
  cidr_block = cidrsubnet(var.vpc_cidr[terraform.workspace], 11, count.index)
  availability_zone = format("%s%s", var.region_code, var.az_code[count.index])
  tags = {
    Name = format("%s-%s-0-pub-%s-sbn", var.project_name, var.env_code[terraform.workspace], var.az_code[count.index])
  }
}

## Private Backend
resource "aws_subnet" "project_private_backend_subnet" {
  count = length(var.az_code)
  vpc_id = aws_vpc.project_vpc.id
  cidr_block = cidrsubnet(var.vpc_cidr[terraform.workspace], 11, count.index+2)
  availability_zone = format("%s%s", var.region_code, var.az_code[count.index])
  tags = {
    Name = format("%s-%s-1-pri-backend-%s-sbn", var.project_name, var.env_code[terraform.workspace], var.az_code[count.index])
  }
}

## Private BackOffice
resource "aws_subnet" "project_private_backOffice_subnet" {
  count = length(var.az_code)
  vpc_id = aws_vpc.project_vpc.id
  cidr_block = cidrsubnet(var.vpc_cidr[terraform.workspace], 11, count.index+4)
  availability_zone = format("%s%s", var.region_code, var.az_code[count.index])
  tags = {
    Name = format("%s-%s-2-pri-backOffice-%s-sbn", var.project_name, var.env_code[terraform.workspace], var.az_code[count.index])
  }
}

## Private DB
resource "aws_subnet" "project_private_db_subnet" {
  count = length(var.az_code)
  vpc_id = aws_vpc.project_vpc.id
  cidr_block = cidrsubnet(var.vpc_cidr[terraform.workspace], 11, count.index+6)
  availability_zone = format("%s%s", var.region_code, var.az_code[count.index])
  tags = {
    Name = format("%s-%s-3-pri-db-%s-sbn", var.project_name, var.env_code[terraform.workspace], var.az_code[count.index])
  }
}
