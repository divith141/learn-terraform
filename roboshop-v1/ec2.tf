resource "aws_instance" "frontend" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0361b4cfb8e9eb9ab"]
  tags = {
    Name = "frontend.dev"
  }
}


resource "aws_instance" "mongo" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0361b4cfb8e9eb9ab"]
  tags = {
    Name = "mongo.dev"
  }
}


resource "aws_instance" "catalogue" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0361b4cfb8e9eb9ab"]
  tags = {
    Name = "catalogue.dev"
  }
}

