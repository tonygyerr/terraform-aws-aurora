
output "cluster_id" {
  value = "${aws_rds_cluster.rds.id}"
}

output "endpoint" {
  value = "${aws_rds_cluster.rds.endpoint}"
}

output "port" {
  value = "${aws_rds_cluster.rds.port}"
}

output "reader_endpoint" {
  value = "${aws_rds_cluster.rds.reader_endpoint}"
}

output "security_group" {
  value = "${aws_security_group.rds.id}"
}

output "subnet_group_name" {
  value = "${aws_db_subnet_group.rds.name}"
}

output "master_username" {
  value = "${aws_rds_cluster.rds.master_username}"
}

output "master_password" {
  value = "${aws_rds_cluster.rds.master_password}"
}

output "engine" {
  value = "${aws_rds_cluster.rds.engine}"
}
