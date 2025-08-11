# variables.tf

variable "region" {
  description = "The AWS region to deploy to"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  default     = "ami-0c55b159cbfafe1f0" # Replace with a valid Ubuntu AMI ID for your region
}
