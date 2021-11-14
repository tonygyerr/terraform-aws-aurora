resource "random_id" "rds" {
  byte_length = 20 * 3 / 4
}

resource "aws_secretsmanager_secret" "rds" {
  name = "${var.environment}-${var.secret_name}"
  tags = var.tags
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "rds" {
  secret_id = aws_secretsmanager_secret.rds.id
  secret_string = random_id.rds.b64_std
}