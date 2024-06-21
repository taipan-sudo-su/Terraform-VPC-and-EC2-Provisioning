variable "aws_region" {
  description = "The AWS region to deploy resources."
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "public_key_path" {
  description = "The path to the public key for SSH access."
  type        = string
}

variable "private_key_path" {
  description = "The path to the private key for SSH access."
  type        = string
}

variable "availability_zone" {
  description = "The availability zone for the subnet."
  type        = string
}

variable "ami_value" {
  description = "The AMI ID for the instance."
  type        = string
}

variable "instance_type_value" {
  description = "The instance type."
  type        = string
}
