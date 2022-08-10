variable REGION {
  default = "us-west-2"
}
variable ZONE1 {
  default = "us-west-2a"
}
variable ZONE2 {
  default = "us-west-2b"
}
variable ZONE3 {
  default = "us-west-2c"
}
variable ZONE4 {
  default = "us-west-2d"
}
variable AMIS {
  type = "map"
  default = {
    us-west-2 = "ami-0cea098ed2ac54925"
    us-west-1 = "ami-0cea098ed2ac54923"
  }
}
variable USER {
  default = "ec2-user"
}
variable PUB_KEY {
  default = "dovekey.pub"
}
variable PRIV_KEY {
  default = "dovekey"
}
variable MYIP {
  default = "223.189.214.195/32"
}
