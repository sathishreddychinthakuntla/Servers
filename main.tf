provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "two" {
count = 5
ami = "ami-07a6f770277670015"
instance_type = "t2.micro"
key_name = "myserver"
vpc_security_group_ids = ["sg-0589cf1c342ef9ece"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["ansible", "dev-1", "dev-2", "test-1", "test-2"]
}
