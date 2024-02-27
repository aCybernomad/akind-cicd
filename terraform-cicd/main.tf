# main.tf

provider "aws" {
  region = "eu-north-1" # Specify the AWS region
}

# Create a VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}

# Create a security group
resource "aws_security_group" "my_security_group" {
  name        = "security-group"
  description = "Allow inbound traffic on ports 80 and 22"

  vpc_id = aws_vpc.my_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create an EC2 instance
resource "aws_instance" "my_instance" {
  ami           = "ami-0014ce3e52359afbd" # Specify the desired AMI ID
  instance_type = "t3.micro"
  key_name      = "akind_cicd"

  user_data = file("script.sh")

  tags = {
    Name        = "Akind CICD"
    Environment = "Dev"
  }
}
