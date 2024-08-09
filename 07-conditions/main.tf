# condition in terraform is to pick a value, Not about running the block
# = expression ? TRUE_VAL : FALSE_VAL

resource "aws_route53_record" "frontend" {
  zone_id = "Z043863937TBAZZ058716"
  name    = "test.kranthi.online"
  type    = "A"
  ttl     = var.ttl == "" ? 15 : var.ttl
  records = ["1.1.1.1"]
}

variable "ttl" {}