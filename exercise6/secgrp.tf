resource "aws_security_group" "dove_stack_sg" {
  vpc_id = aws_vpc.dove.id
  name = "dove-stack-sg"
  description = "sec group for dove ssh"
  egress {
    from_port = 0
    protocol  = "-1"
    to_port   = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 22
    protocol  = "tcp"
    to_port   = 22
    cidr_blocks = [var.MYIP]
  }
  tags = {
    Name = "allow-ssh"
  }
}