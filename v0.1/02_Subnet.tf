resource "aws_subnet" "project_public_subnet_a" {
  vpc_id = aws_vpc.project_vpc.id
  cidr_block = cidrsubnet(var.vpc_cidr[terraform.workspace], 11, 0)
  availability_zone = "${var.region_code}a"
  tags = {
    Name = "${var.project_name}-${var.env_code[terraform.workspace]}-0-public-a-sbn"
  }
}

resource "aws_subnet" "project_public_subnet_b" {
  vpc_id = aws_vpc.project_vpc.id
  cidr_block = cidrsubnet(var.vpc_cidr[terraform.workspace], 11, 1)
  availability_zone = "${var.region_code}b"
  tags = {
    Name = "${var.project_name}-${var.env_code[terraform.workspace]}-0-public-b-sbn"
  }
}

