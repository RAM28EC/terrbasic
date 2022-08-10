resource "aws_key_pair" "deployer" {
  key_name = "dovekey"
  public_key = file("dovekey.pub")
}
resource "aws_instance" "dove-inst" {
  ami = var.AMIS[var.REGION]
  instance_type = "t2.micro"
  availability_zone = "var.ZONE1"
  key_name = aws_key_pair.deployer.key_name
  vpc_security_group_ids = ["sg-047df945ec0a2d451"]
  tags = {
      Name = "Dove-instance"
  }
  provisioner "file" {
    source = "web.sh"
    destination = "/tmp/web.sh"
  }
  provisioner "remote-exec" {
    inline = [
     "chmod +x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }
  connection {
    user = var.USER
    private_key = file("dovekey")
  }
}



