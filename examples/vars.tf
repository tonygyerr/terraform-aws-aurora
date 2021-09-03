variable "vpc_id" {
  type = string
}

# variable "aws_region" {
#   type = string
# }

variable "app_name" {
  type = string
  default = ""
}

variable "instance_count" {
  type = string
}

variable "private_db_subnet_ids" {
  description = "application private subnets for the vpc"
  type        = list
  #default     = ["172.27.162.96/28","10.0.0.0/28","10.0.0.0/28"]
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

variable "role" {
  type = string
}

variable "max_allowed_packet" {
  type = string
}

variable "cluster_identifier" {
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

variable "master_password" {
  type    = string
  default = ""
} 