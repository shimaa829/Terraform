
resource "aws_instance" "my-ec21" {
  
  ami = "ami-0fc61db8544a617ed"
  instance_type = "t2.micro"
  
    tags = {
    Name = "nginx1"
  }

  subnet_id     = "${aws_subnet.pubsub1.id}"
  key_name = "${aws_key_pair.deployer.id}"

}


resource "aws_instance" "my-ec22" {
  
  ami = "ami-0fc61db8544a617ed"
  instance_type = "t2.micro"
 
  tags = {
    Name = "nginx2"
  }
  subnet_id     = "${aws_subnet.pubsub2.id}"
  key_name = "${aws_key_pair.deployer.id}"
}


resource "aws_instance" "my-ec23" {
  
  ami = "ami-0fc61db8544a617ed"
  instance_type = "t2.micro"

      tags = {
    Name = "bastian"
  }
  subnet_id     = "${aws_subnet.pubsub1.id}"
  key_name = "${aws_key_pair.deployer.id}"
}

 resource "aws_instance" "my-ec24" {
  
  ami = "ami-0fc61db8544a617ed"
   instance_type = "t2.micro"
      tags = {
    Name = "nodejs1"
  }
  subnet_id     = "${aws_subnet.privsub1.id}"
  key_name = "${aws_key_pair.deployer.id}"
}


resource "aws_instance" "my-ec25"{
  
  ami = "ami-0fc61db8544a617ed"
  instance_type = "t2.micro"
  

      tags = {
    Name = "nodejs2"
  }
  
  subnet_id     = "${aws_subnet.privsub2.id}"
  key_name = "${aws_key_pair.deployer.id}"
}