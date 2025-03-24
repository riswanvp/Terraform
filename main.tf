terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>2.70"
    }
  }
}
provider "aws" {
    region = var.aws_region
  
}
resource "aws_instance" "DevOps-vm" {
  ami = var.image_id
  instance_type = "t2.micro"
  subnet_id = var.subnet_id
}