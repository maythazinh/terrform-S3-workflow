# EC2 instance in the subnet
resource "aws_instance" "s3_ec2" {
  ami           = "ami-04b4f1a9cf54c11d0"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.my_subnet.id
  tags = {
    Name = "test-instance"
  }
}

# Create a VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.10.0.0/16"
  tags = {
    Name = "terraform-vpc"
  }
}

# Create a subnet
resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.10.1.0/24"
  availability_zone = "us-east-1a" # Adjust if needed
  tags = {
    Name = "terraform-subnet"
  }
}

