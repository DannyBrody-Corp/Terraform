#----------------------------------------------------------------
# Terraform Policies
#----------------------------------------------------------------

resource "aws_iam_policy" "admin" {
  name        = "admin-policy"
  path        = "/"
  description = "Admin policy"

  policy = <<-EOF
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect" : "Allow",
        "Action" : "*",
        "Resource" : "*"
      }
    ]
  }
  EOF
}

#----------------------------------------------------------------
# Lambda Policies
#----------------------------------------------------------------

resource "aws_iam_policy" "lambda" {
  name        = "lambda-policy"
  path        = "/"
  description = "Lambda policy"

  policy = <<-EOF
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect" : "Allow",
        "Action" : "s3:*",
        "Resource" : "*"
      },
      {
        "Effect":"Allow",
        "Action": [
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:PutLogEvents"
        ],
        "Resource":"*"
      }
    ]
  }
  EOF
}
