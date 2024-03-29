variable "vpc_id" {
  type = string
}

variable "app_name" {
  type = string
  default = ""
}

variable "instance_count" {
  type = string
}

variable "instance_class" {
  description = "instance type"
  type = string
}

variable "initial_db" {
  description = "initial table name"
  default     = ""
}

variable "private_db_subnet_ids" {
  description = "application private subnets for the vpc"
  type        = list
}

variable "extra_tags" {
  type = "map"
}

variable "module_config" {
  description = "Configuration options for the Module"
  type        = map
}

variable "environment" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "param_name" {
  type = string
}

variable "monitoring_role_arn" {
  type = string
}

variable "max_allowed_packet" {
  type = string
}

variable "cluster_identifier" {
  type = string
}

variable "cluster_version" {
  type = string
}

variable "cluster_pg_version" {
  type = string
}

variable "vpc_security_group_ids" {
  type = list
}

variable "secret_name" {
  type = string
}

variable "snapshot_ind" {
  type = string
}

variable "backtrack_window" {
  type = string
}

variable "iam_enabled" {
  type = string
}

variable "instance_identifier" {
  type = string
}

variable "kms_alias_aurora" {
  type = string
}

variable "engine_mode" {
  type = string
}

variable "engine_version" {
  type = string
}

variable "db_port" {
  type = string
}

variable "private_db_subnets" {
  type        = list
  description = "List of Private Database Subnets"
  default     = []
}

variable "master_password" {
  type    = string
  default = ""
} 

variable "option_name" {
  type = string
  default = ""
}

variable "username" {
  type    = string
  default = ""
}

variable "subnet_group_name" {
  description = "apidb_subnet_group"
  default     = ""
}

variable "engine_name" {
  description = "engine name"
  default     = ""
}

variable "sns_topic" {
  type    = string
  default = ""
}
