resource "aws_internet_gateway" "igw" {
    vpc_id     = aws_vpc.main.id

    tags = {
        Name = "roboshop-${var.ENV}-igw"
    }
}

# Creates  Elastic ip  address which would used by the  NAT gw . Ensure , EIP is previsioned first and then NAT
resource "aws_eip" "ngw_ip" {
    
    vpc        = true

    tags  = {
        Name = "roboshop-${var.ENV}-ngw"
    }
}


## Creates NAT Gateway and will be attached to Public Subnet
resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.ngw_ip.id
  subnet_id     = aws_subnet.public_subnet.*.id[0] 

  tags = {
    Name = "gw NAT"
  }

# To ensure proper ordering, it is recommended to add an explacit dependencey
# On the Internet Gateway for the vpc 

  
depends_on = [aws_internet_gateway.igw, aws_eip.ngw_ip]
}