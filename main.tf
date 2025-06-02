provider "aws" {
  # Configuration options
  access_key = "AKIA2MNVMDG5WHLVED73"
  secret_key = "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"
  region = "us-east-1"
}

resource "aws_vpc" "name" {
  cidr_block = "172.16.0.0/16"
   
}

resource "aws_subnet" "subnet" {
 vpc_id = aws_vpc.name.id
  cidr_block = "172.16.1.0/24"
     
}

