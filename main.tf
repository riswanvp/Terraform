terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>2.70"
    }
  }
  backend "s3" {
     bucket = "terraform-statef-files"
     key    = "Test-Ec2/terraform.tfstate"
     region = "ap-south-1"
  }
}
provider "aws" {
    region = var.aws_region
  
}
resource "aws_instance" "DevOps-vm" {
  ami = var.image_id
  instance_type = "t2.micro"
  key_name = var.key_name
  subnet_id = var.subnet_id
  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = file("terraform.pem")
    host = "${self.public_ip}"
  }
  tags = {
    Name = "Terraform-test-vm"
  }
}