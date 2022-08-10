provider "aws" {
  region = "us-west-2"
}
resource "aws_instance" "intro" {
  ami = "ami-0cea098ed2ac54925"
  instance_type = "t2.micro"
  availability_zone = "us-west-2a"
  key_name = "Oregonkey"
  vpc_security_group_ids = [sg-047df945ec0a2d451]
  tags = {
    Name = "Intro-instance"
  }
}