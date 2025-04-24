resource "aws_kms_key" "secrets_key" {
  description = "KMS key for Secrets Manager"
  deletion_window_in_days = 10
}
