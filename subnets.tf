resource "aws_subnet" "public_subnet" {
  count                = length(var.PUBLIC_SUBNET_CIDR)
  vpc_id               = aws_vpc.main.id
  cidr_block           = element(var.PUBLIC_SUBNET_CIDR, count.index) 
  availability_zone_id = element(var.AZ, count.index)

  tags = {
    Name  = "roboshop-${var.ENV}-pub-subnet-${element(var.AZ, count.index)}"
  }
}