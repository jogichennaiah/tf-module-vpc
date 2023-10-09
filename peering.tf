# Creates peering between Default and project VPC

resource "aws_vpc_peering_connection" "peer" {
  vpc_id        = var.DEFAULT_VPC_ID
  peer_vpc_id   = aws_vpc.main.id
  auto_accept   = true                                    # This is valid if both vpc's are in the same account.
}

 