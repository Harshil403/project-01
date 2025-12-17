resource "aws_iam_user" "project_1_user" {
  name = "project-1-user"
}

resource "aws_iam_group" "project_1_group" {
  name = "project-1-group"  
}
resource "aws_iam_policy" "s3_readonly" {
  name = "S3ReadOnlyPolicy"
  description = "this is read only access to s3"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["s3:GetObject", "s3:ListBucket"]
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "Attach_Policy_User" {
  user       = aws_iam_user.project_1_user.name
  policy_arn = aws_iam_policy.s3_readonly.arn
}

