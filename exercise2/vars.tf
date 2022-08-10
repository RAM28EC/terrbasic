variable "REGION" {
  default = "us-west-2"
}
variable AMIS {
  type = "map"
  default = {
    us-west-1 = "ami-0cea098ed3ac54925"
    us-west-2 = "ami-0cea098ed2ac54925"
  }
