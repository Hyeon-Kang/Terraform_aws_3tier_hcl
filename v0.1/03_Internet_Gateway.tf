resource "aws_internet_gateway" "project_internet_gateway" {
  vpc_id = aws_vpc.project_vpc.id
  tags = {
    Name = format("%s-%s-igw", var.project_name, var.env_code[terraform.workspace])
  }
}