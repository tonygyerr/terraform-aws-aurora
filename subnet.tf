resource "aws_db_subnet_group" "apidb_subnet_group" {
  name       = "${var.subnet_name}"
  subnet_ids = "${var.private_db_subnet_ids}"
}