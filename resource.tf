resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr
}
resource "aws_subnet" "this" {
  count = length(var.subnet_cidr)
  vpc_id = aws_vpc.this.id
  cidr_block = var.subnet_cidr[count.index]
  availability_zone = var.azs[count.index]
}