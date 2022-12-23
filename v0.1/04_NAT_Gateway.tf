

## NAT Gateway EIP
resource "aws_eip" "project_nat_gateway_eip" {
  count = var.nat_amount
  vpc   = true
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    Name = format("%s-%s-%s-eip", var.project_name, var.env_code[terraform.workspace], var.az_code[count.index])
  }
}

## NAT Gateway AZ-A
resource "aws_nat_gateway" "project_nat_gateway" {
  count = var.nat_amount
  allocation_id = aws_eip.project_nat_gateway_eip[count.index].id
  subnet_id = aws_subnet.project_public_subnet[count.index].id
  tags = {
    Name = format("%s-%s-%s-ngw", var.project_name, var.env_code[terraform.workspace], var.az_code[count.index])
  }
  depends_on = [aws_eip.project_nat_gateway_eip] ## 종속성 부여
}