resource "aws_db_subnet_group" "rds" {
  name       = "${var.app_name}-${var.environment}-subnet-group"
  subnet_ids = "${var.private_db_subnet_ids}"
}