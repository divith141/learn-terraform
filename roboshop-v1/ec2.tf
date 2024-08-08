resource "aws_instance" "frontend" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0361b4cfb8e9eb9ab"]
  tags = {
    Name = "frontend.dev"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z043863937TBAZZ058716"
  name    = "frontend.dev.kranthi.online"
  type    = "A"
  ttl     = 15
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongo" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0361b4cfb8e9eb9ab"]
  tags = {
    Name = "mongo.dev"
  }
}

resource "aws_route53_record" "mongo" {
  zone_id = "Z043863937TBAZZ058716"
  name    = "mongo.dev.kranthi.online"
  type    = "A"
  ttl     = 15
  records = [aws_instance.mongo.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0361b4cfb8e9eb9ab"]
  tags = {
    Name = "catalogue.dev"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z043863937TBAZZ058716"
  name    = "catalogue.dev.kranthi.online"
  type    = "A"
  ttl     = 15
  records = [aws_instance.catalogue.private_ip]
}
