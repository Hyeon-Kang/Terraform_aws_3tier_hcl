resource "aws_vpc" "project_vpc" {
  cidr_block = var.vpc_cidr[terraform.workspace]
  tags =  {
    Name = format("%s-%s-vpc", var.project_name, var.env_code[terraform.workspace])
  }
}