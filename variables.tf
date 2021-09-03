variable "vpc_id" {
  type = string
}

# variable "region" {
#   type = string
# }

variable "environment" {}

variable "app_name" {
  type = string
  default = ""
}

variable "name" {
  description = "The domain name to setup DHCP for"
  default     = "api"
}

variable "tags" {
  type        = map
  description = "optional default tags"

  default = {
    Name       = "api"
    Owner      = "cloudops@energy.com"
    CostCenter = "N/A"
    vpc        = "api-east-vpc"
    env        = "prd"
    project    = "api"
  }
}

variable "cloud_watch_mh_comparison_operator" {
  default = "GreaterThanThreshold"
}

variable "cloud_watch_mh_evaluation_periods" {
  default = "1"
}

variable "cloud_watch_mh_metric_name" {
  default = "CpuUtilization"
}

variable "cloud_watch_mh_namespace" {
  default = "AWS/RDS"
}

variable "cloud_watch_mh_period" {
  default = "86400"
}

variable "cloud_watch_mh_statistic" {
  default = "Maximum"
}

variable "cloud_watch_mh_threshold" {
  default = "750000000"
}

variable "cloud_watch_mh_description" {
  default = "content delivery memory higher than 60%"
}

variable "cloud_watch_mh_missing_data" {
  default = "notBreaching"
}

variable "ROLE" {
  default = "WRITER"
}

variable "role" {
  description = "Role for the rds subnet"
  type        = string
}

variable "create_event_subscription" {
  default = true
}

variable "secret_name" {
  description = "secret created for rds cluster"
  type        = string
}

variable "sns_topic" {
  type    = string
  default = ""
}

variable "cluster_event_categories" {
  description = "list of cluster events for notification"
  type        = list(string)
  default = [
    "failover",
    "failure",
    "maintenance",
    "notification",
  ]
}

variable "cluster_instance_event_categories" {
  description = "list of cluster instance events for notification"
  type        = list(string)
  default = [
    "availability",
    "deletion",
    "failover",
    "failure",
    "low storage",
    "maintenance",
    "notification",
    "read replica",
    "recovery",
    "restoration",
  ]
}

variable "subnet_group_name" {
  description = "apidb_subnet_group"
  default     = "apidb_subnet_group"
}

variable "engine_name" {
  description = "engine name"
  default     = "aurora"
}


variable "engine_version" {
  description = "engine version"
  default     = ""
}


variable "instance_class" {
  description = "instance type"
  default     = "db.r3.large"
}

variable "initial_db" {
  description = "initial table name"
  default     = ""
}

variable "apidb_az" {
  type        = list
  description = "az for content delivery database"
  default     = ["us-east-1a", "us-east-1b", "us-east-1e"]
}

variable "apidb_az1" {
  description = "az for content delivery database"
  default     = "us-east-1a"
}

variable "apidb_az2" {
  description = "az for content delivery database"
  default     = "us-east-1b"
}

variable "apidb_az5" {
  description = "az for content delivery database"
  default     = "us-east-1e"
}

variable "apply_immediately" {
  description = "apply changes to databases immediately"
  default     = "false"
}

variable "cluster_size" {
  description = "number of cluster instances to create"
  default     = "2"
}

variable "cluster_parameters" {
  description = "list of cluster parameter maps to apply"
  type        = list
  default     = []
}

variable "monitoring_interval" {
  description = "monitoring interval"
  type        = string
  default     = "5"
}

variable "parameters" {
  description = "list of db parameter maps to apply"
  type        = list
  default     = []
}

variable "publicly_accessible" {
  description = "customer database is publicly accessible"
  default     = "false"
}

variable "username" {
  description = "username"
  default     = "sanith"
}

variable "bu_retention" {
  description = "back up retention period"
  default     = "30"
}

variable "maint_window" {
  description = "time for maintinance"
  default     = "sun:19:00-sun:23:00"
}

variable "preferred_backup_window" {
  description = "daily time range during which automated backups are created"
  default     = "12:20-12:50"
}

variable "multiaz" {
  description = "multi az deployment"
  default     = true
}

variable "instance_identifier" {
  description = "apidb instance identifier"
  #default     = "api-customer-db-aurora-sql-rds"
}

variable "cluster_identifier" {
  description = "cluster_identifier"
  #default     = "api-customer-db-cluster"
}

variable "skip_final_snapshot" {
  description = "skip final snapshot"
  default     = "true"
}

variable "final_snapshot_identifier" {
  description = "final snapshot identifier"
  default     = "false"
}

variable "storage_encrypted" {
  description = "storage encryption"
  default     = "true"
}

variable "license_model" {
  description = "license model"
  default     = "license-included"
}

variable "cluster_version" {
  description = "version of cluster database"
  default     = "aurora5.6"
}

variable "rds" {
  description = "(Required) map of variables for RDS"
  type        = map

  default = {
    instance_type   = "db.r3.large"
    password_length = 20
  }
}

variable "api_rds_monitoring_arn" {
  description = "api rds monitoring role arn'"
  type        = string
  default     = "arn:aws:iam::123456789012:role/rds-monitoring-role"
}

variable "apidb_port" {
  type    = string
  default = "3306"
}

variable "subnet_name" {
  default = "apidb_subnets"
}

variable "private_db_subnet_ids" {
  type = list
}

variable "param_name" {
  type = string
}

variable "max_allowed_packet" {
  type    = string
  default = "4100000"
}

variable "vpc_security_group_ids" {
  type = list
}

variable "snapshot_ind" {
  type    = string
  default = "false"
}

variable "engine_mode" {
  type    = string
  default = "provisioned"
}

variable "backtrack_window" {
  type    = string
  default = "43200"
}

variable "iam_enabled" {
  type = string
}

variable "instance_count" {
  type    = string
  default = "1"
}

variable "kms_alias_aurora" {
  type = string
}

variable "cluster_role" {
  type = string
  default = "WRITER"
}