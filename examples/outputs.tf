
output "cluster_id" {
  value = "${module.aurora.cluster_id}"
}

output "endpoint" {
  value = "${module.aurora.endpoint}"
}

output "port" {
  value = "${module.aurora.port}"
}

output "reader_endpoint" {
  value = "${module.aurora.reader_endpoint}"
}