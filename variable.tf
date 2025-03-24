variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "ap-south-1" # Change as needed
}
variable "image_id" {
    default = "ami-0e35ddab05955cf57"  # provide ami id
  description = "The id of the machine image (AMI) to use for the server."
}
variable "subnet_id" {
    default = "subnet-0deac80ded4f54e3e"    # Mention the subnet
    description = "Public subnet use for the server"
}
variable "key_name" {
  default = "terraform"
}