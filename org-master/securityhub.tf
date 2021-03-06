resource "aws_securityhub_account" "master" {
  provider = aws.master
}

resource "aws_securityhub_standards_subscription" "master" {
  provider = aws.master
  standards_arn = "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"
  depends_on = [aws_securityhub_account.master]
}
