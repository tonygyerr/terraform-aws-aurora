data "aws_secretsmanager_secret" "rds" {
  name = "${var.environment}/${var.secret_name}"
}

data "aws_secretsmanager_secret_version" "my_secret_rds_user_map" {
  secret_id = "${data.aws_secretsmanager_secret.rds.id}"
}