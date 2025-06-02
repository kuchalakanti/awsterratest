provider "aws" {
  # Configuration options
  region = "us-east-1"
}

resource "aws_vpc" "name" {
  cidr_block = "172.16.0.0/16"
   
}

resource "aws_subnet" "subnet" {
 vpc_id = aws_vpc.name.id
  cidr_block = "172.16.1.0/24"
     
}

