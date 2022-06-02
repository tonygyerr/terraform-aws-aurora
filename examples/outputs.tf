
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

output "security_group" {
  value = "${module.aurora.security_group}"
}

output "master_username" {
  value = "${module.aurora.master_username}"
}

output "master_password" {
  value = "${module.aurora.master_password}"
}

output "engine" {
  value = "${module.aurora.engine}"
}

output "port" {
  value = "${module.aurora.port}"
}
