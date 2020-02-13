variable "vpc_name" {
  default = "simple_test_vpc"
}

variable "vpc_cidr" {
  default = "192.168.0.0/16"
}

resource "opentelekomcloud_vpc_v1" "vpc_v2" {
  name = var.vpc_name
  cidr = var.vpc_cidr
}
