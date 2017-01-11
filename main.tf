variable "vpc_id" {}
variable "name" {}
variable "environment" {}
variable "team" {}

resource "aws_internet_gateway" "igw" {
  vpc_id = "${var.vpc_id}"

  tags {
    Name        = "${var.name}-igw"
    environment = "${var.environment}"
    team        = "${var.team}"
  }
}

output "igw_id" {
  value = "${aws_internet_gateway.igw.id}"
}
