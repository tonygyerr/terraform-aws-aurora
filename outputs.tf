
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