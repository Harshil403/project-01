resource "aws_s3_bucket" "project-1-s3" {
  bucket = "project-1-bucket-16122025"
  tags = {
    Name = "ProjectDemoBucket"
  }
}