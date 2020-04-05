resource "aws_subnet" "pubsub1" {
  vpc_id     = "${module.module1.vpc_id}"
  cidr_block = "${var.cidr_pubsub1}"

  tags = {
    Name = "pub-sub1"
  }
  availability_zone = "${var.AZ-a1}"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "privsub1" {
  vpc_id     = "${module.module1.vpc_id}"
  cidr_block = "${var.cidr_privsub1}"

  tags = {
    Name = "priv-sub1"
  }
  availability_zone = "${var.AZ-a2}"
  
}

resource "aws_subnet" "pubsub2" {
  vpc_id     = "${module.module1.vpc_id}"
  cidr_block = "${var.cidr_pubsub2}"

  tags = {
    Name = "pub-sub2"
  }
  availability_zone = "${var.AZ-b1}"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "privsub2" {
  vpc_id     = "${module.module1.vpc_id}"
  cidr_block = "${var.cidr_privsub2}"

  tags = {
    Name = "priv-sub2"
  }
  availability_zone = "${var.AZ-b2}"
  
}