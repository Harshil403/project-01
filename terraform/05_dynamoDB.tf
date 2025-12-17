resource "aws_dynamodb_table" "project_1_dynamoDB" {
  name = "porject-1-dynamodb"
  billing_mode = "PAY_PER_REQUEST" 

  hash_key = "user_id"

  attribute {
    name = "user_id"
    type = "S"
  }
  
  tags = {
    Environment = "dev"
    project = "project-1-dynamdb"
  }

}

resource "aws_dynamodb_table_item" "user-1" {
  table_name = aws_dynamodb_table.project_1_dynamoDB.name
  hash_key = "user_id"
  
  item = jsonencode({
    user_id = {S = "u-101"}
    username = {S = "harshil"}
  })
}

