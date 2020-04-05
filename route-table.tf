resource "aws_route_table" "pub-route" {
  vpc_id = "${module.module1.vpc_id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  tags = {
    Name = "pub-route"
  }
}


resource "aws_route_table" "priv-route" {
  vpc_id = "${module.module1.vpc_id}"


  tags = {
    Name = "priv-route"
  }
}
