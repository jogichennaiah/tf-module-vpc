# Creates peering between Default and project VPC

resource "aws_vpc_peering_connection" "foo" {
  vpc_id        = var.DEFAULT_VPC_ID
  peer_vpc_id   = aws_vpc.main.id
  auto_accept   = true
}

 