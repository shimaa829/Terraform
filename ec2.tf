
resource "aws_instance" "my-ec21" {
  
  ami = "ami-0fc61db8544a617ed"
  instance_type = "t2.micro"
  subnet_id     = "${aws_subnet.pubsub1.id}"
  key_name = "${aws_key_pair.deployer.id}"
  vpc_security_group_ids = ["${aws_security_group.dis_allow_ssh.id}",
                            "${aws_security_group.allow_http.id}",
                           ]
  tags = {
    Name = "nginx1"
  }

}


resource "aws_instance" "my-ec22" {
  
  ami = "ami-0fc61db8544a617ed"
  instance_type = "t2.micro"
  subnet_id     = "${aws_subnet.pubsub2.id}"
  key_name = "${aws_key_pair.deployer.id}"
  vpc_security_group_ids = ["${aws_security_group.dis_allow_ssh.id}",
                            "${aws_security_group.allow_http.id}",
                           ]
  tags = {
    Name = "nginx2"
  }

}


resource "aws_instance" "my-ec23" {
  
  ami = "ami-0fc61db8544a617ed"
  instance_type = "t2.micro"
  subnet_id     = "${aws_subnet.pubsub1.id}"
  key_name = "${aws_key_pair.deployer.id}"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]

  tags = {
    Name = "bastian"
  }

}

 resource "aws_instance" "my-ec24" {
  
  ami = "ami-0fc61db8544a617ed"
  instance_type = "t2.micro"
  subnet_id     = "${aws_subnet.privsub1.id}"
  key_name = "${aws_key_pair.deployer.id}"
  vpc_security_group_ids = ["${aws_security_group.dis_allow_ssh.id}"]

  tags = {
    Name = "nodejs1"
  }

}


resource "aws_instance" "my-ec25"{
  
  ami = "ami-0fc61db8544a617ed"
  instance_type = "t2.micro"
  subnet_id     = "${aws_subnet.privsub2.id}"
  key_name = "${aws_key_pair.deployer.id}"
  vpc_security_group_ids = ["${aws_security_group.dis_allow_ssh.id}"]

  tags = {
    Name = "nodejs2"
  }
  

}