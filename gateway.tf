resource "aws_internet_gateway" "gw" {
  vpc_id = "${module.module1.vpc_id}"

  tags = {
    Name = "gateWay"
  }
}