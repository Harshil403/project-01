resource "aws_internet_gateway" "project-igw" {
  vpc_id = aws_vpc.project_vpc.id
  tags = {
    Name = "project-igw" 
  }
}