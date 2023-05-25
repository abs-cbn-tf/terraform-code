# Terraform clone

This Terraform configuration demonstrates how to create, update, and delete local modules.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine
- AWS credentials properly configured

## Usage

1. Clone this repository to your local machine:

   ```shell
   git clone <repository_url>





# EC2 Instance Module

This Terraform module creates an EC2 instance in AWS and attaches an IAM role policy to it.

## Prerequisites

- Terraform installed on your local machine.
- AWS account credentials and appropriate permissions to create EC2 instances, IAM roles, and policies.

## Usage

1. Clone this repository or download the module files.

2. In your Terraform configuration, import the module:

```hcl
module "ec2_instance" {
  source = "<path_to_module_directory>"

  # Provide the necessary variables
  region             = "us-west-2"
  role_name          = "my-ec2-role"
  role_assume_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
  policy_arn         = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  ami                = "ami-0c94855ba95c71c99"
  instance_type      = "t2.micro"
  key_name           = "my-key-pair"

  instance_tags = {
    Name = "example-instance"
  }
}

Customize the values of the variables according to your requirements.

Run terraform init to initialize the configuration.

Run terraform apply to create the EC2 instance and attach the IAM role policy.

To destroy the created resources, run terraform destroy.

