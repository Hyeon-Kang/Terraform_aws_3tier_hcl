## Public RT
resource "aws_route_table" "project_public_route_table" {
  vpc_id = aws_vpc.project_vpc.id
  tags = {
    Name = format("%s-%s-0-public-rt", var.project_name, var.env_code[terraform.workspace])
  }
}

resource "aws_route" "public_rt_setting" {
  route_table_id = aws_route_table.project_public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.project_internet_gateway.id
}

resource "aws_route_table_association" "public_rt_associate" {
  count = length(var.az_code)
  subnet_id = aws_subnet.project_public_subnet[count.index].id
  route_table_id    = aws_route_table.project_public_route_table.id
}



## Private Backend RT
resource "aws_route_table" "project_private_backend_route_table" {
  vpc_id = aws_vpc.project_vpc.id
  tags = {
    Name = format("%s-%s-1-private-backend-rt", var.project_name, var.env_code[terraform.workspace])
  }
}

resource "aws_route" "private_backend_rt_setting" {
  route_table_id = aws_route_table.project_private_backend_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = aws_nat_gateway.project_nat_gateway[0].id ## NAT Fix
}

resource "aws_route_table_association" "private_backend_rt_associate" {
  count = length(var.az_code)
  subnet_id = aws_subnet.project_private_backend_subnet[count.index].id
  route_table_id    = aws_route_table.project_private_backend_route_table.id
}



## Private BackOffice RT
resource "aws_route_table" "project_private_backOffice_route_table" {
  vpc_id = aws_vpc.project_vpc.id
  tags = {
    Name = format("%s-%s-2-private-backOffice-rt", var.project_name, var.env_code[terraform.workspace])
  }
}

resource "aws_route" "private_backOffice_rt_setting" {
  route_table_id = aws_route_table.project_private_backOffice_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = aws_nat_gateway.project_nat_gateway[0].id ## NAT Fix
}

resource "aws_route_table_association" "private_backOffice_rt_associate" {
  count = length(var.az_code)
  subnet_id = aws_subnet.project_private_backOffice_subnet[count.index].id
  route_table_id    = aws_route_table.project_private_backOffice_route_table.id
}




## Private DB RT
resource "aws_route_table" "project_private_db_route_table" {
  vpc_id = aws_vpc.project_vpc.id
  tags = {
    Name = format("%s-%s-3-private-db-rt", var.project_name, var.env_code[terraform.workspace])
  }
}

resource "aws_route" "private_db_rt_setting" {
  route_table_id = aws_route_table.project_private_db_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = aws_nat_gateway.project_nat_gateway[0].id ## NAT Fix
}

resource "aws_route_table_association" "private_db_rt_associate" {
  count = length(var.az_code)
  subnet_id = aws_subnet.project_private_db_subnet[count.index].id
  route_table_id    = aws_route_table.project_private_db_route_table.id
}