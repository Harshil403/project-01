resource "aws_subnet" "ec2_subnet" {
  vpc_id = aws_vpc.project_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "project-subnet"
  }
}

resource "aws_security_group" "project_sg" {
  name = "project_ec2_sg"
  vpc_id = aws_vpc.project_vpc.id
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["10.0.0.0/16"]
  }
  tags = {
    Name = "private-sg"
  }
}

