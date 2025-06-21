variable "vpc_cidr" {
  default = null
  type = string
}
variable "subnet_cidr" {
  default = null
  type = list(string)
}
variable "azs" {
  default = null
  type = list(string)
}