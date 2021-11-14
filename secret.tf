# # data "aws_secretsmanager_secret" "rds" {
# #   name = "${var.environment}/${var.secret_name}"
# # }

# # data "aws_secretsmanager_secret_version" "my_secret_rds_user_map" {
# #   secret_id = "${data.aws_secretsmanager_secret.rds.id}"
# # }

# resource "aws_secretsmanager_secret" "my_secret_user" {
#   name = var.secret_name
# }

# resource "aws_secretsmanager_secret_version" "my_secret_rds_postgres_user_map" {
#   secret_id     = aws_secretsmanager_secret.my_secret_user.id
#   secret_string = aws_rds_cluster.rds.master_password
# } 
