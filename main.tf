provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-07a6f770277670015"
instance_type = "t2.micro"
key_name = "myserver"
vpc_security_group_ids = ["sg-0b6cdb3cdf0c0a68b"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["Ansible", "Dev-1", "Dev-2", "Test-1", "Test-2"]
}
