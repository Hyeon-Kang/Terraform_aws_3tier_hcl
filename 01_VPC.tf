resource "aws_vpc" "aws_vpc" {
  cidr_block = "10.50.0.0/16"
  tags =  { Name = "hyeon_terra_vpc" }
}