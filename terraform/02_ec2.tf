resource "aws_instance" "project-1-ec2" {
  ami = "ami-068c0051b15cdb816"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.ec2_subnet.id
  vpc_security_group_ids = [aws_security_group.project_sg.id]
  associate_public_ip_address = false 
  tags = {
    Name = "project-1"
  }
}



