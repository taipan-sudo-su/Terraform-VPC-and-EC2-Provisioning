# Terraform-VPC-and-EC2-Provisioning
Introduction
This project demonstrates the use of Terraform to provision AWS resources, including a VPC, subnet, internet gateway, route table, security group, and an EC2 instance. The EC2 instance runs a simple Flask application. The setup includes the use of Terraform provisioners to configure the instance after it is launched.

Prerequisites
AWS account with necessary permissions
Terraform installed on your local machine
SSH key pair for EC2 instance access
Project Structure
main.tf: Contains the main Terraform configuration for AWS resources.
variables.tf: Defines the input variables for the Terraform configuration.
terraform.tfvars: Specifies the values for the input variables.
app.py: Simple Flask application to be deployed on the EC2 instance.
provider.tf: Contains the provider configuration.
key: Private SSH key file.
key.pub: Public SSH key file.
use ( ssh-keygen -t rsa ) to create a key pair 


### Work Flow 

Terraform Workflow for AWS VPC and EC2 Setup
Provider Configuration

Define the AWS provider and set the region.
VPC

Create a VPC with a specified CIDR block.
Subnet

Create a subnet within the VPC.
Internet Gateway (IGW)

Create an internet gateway for the VPC.
Route Table

Create a route table for the VPC.
Define a route for the route table to route traffic to the internet gateway.
Associate Route Table with Subnet

Associate the route table with the subnet to enable public access.
Security Group

Create a security group for the EC2 instance.
Define inbound and outbound rules to allow necessary traffic (e.g., SSH, HTTP).
EC2 Instance

Create an EC2 instance within the subnet.
Assign the security group to the instance.
Connection Configuration

Configure SSH connection details for the instance, including user and private key.
Provisioners

Use file provisioner to copy files from local to the remote EC2 instance.
Use remote-exec provisioner to execute commands on the remote EC2 instance (e.g., install software, start services).
