resource "aws_iam_user" "gildong_hong" {
  name = "gildong.hong"
}

resource "aws_iam_user_policy" "macerpark-red" {
  name = "super-admin"
  user = aws_iam_user.gildong_hong.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF

}