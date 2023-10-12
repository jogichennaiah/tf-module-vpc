output "vpc_ID" {
    value = aws_vpc.main.id
}

output "vpc_CIDR" {
  value  =  aws_vpc.main.cidr_block
}

output "PUBLIC_SUBNET_CIDR" {
  value  =  aws_subnet.public_subnet.*.cidr_block
}

output "PRIVATE_SUBNET_CIDR" {
  value  =  aws_subnet.private_subnet.*.cidr_block
}

output "PUBLIC_SUBNET_IDS" {
  value  =  aws_subnet.public_subnet.*.cidr_block
}

output "PRIVATE_SUBNET_IDS" {
  value  =  aws_subnet.private_subnet.*.cidr_block
}

output "DEFAULT_VPC_ID" {
  value  =  var.DEFAULT_VPC_ID
}

output "DEFAULT_VPC_CIDR" {
  value  =  var.DEFAULT_VPC_CIDR
}





