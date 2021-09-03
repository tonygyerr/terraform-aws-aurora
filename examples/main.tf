module "aurora" {
  source = "git::https://github.com/tonygyerr/terraform-aws-aurora.git"
  vpc_id                 = var.vpc_id
  app_name               = var.app_name
  # aws_region             = var.aws_region
  environment            = var.environment
  subnet_name            = "${var.subnet_name}_${var.environment}"
  private_db_subnet_ids  = var.private_db_subnet_ids # module.vpc.private_db_sunets
  param_name             = var.param_name            #apidb_subnet_group_name
  role                   = var.role                  #api_rds_monitoring_arn
  max_allowed_packet     = var.max_allowed_packet
  cluster_identifier     = var.cluster_identifier
  vpc_security_group_ids = var.vpc_security_group_ids
  secret_name            = var.secret_name
  snapshot_ind           = var.snapshot_ind
  engine_mode            = var.engine_mode
  engine_version         = var.engine_version
  backtrack_window       = var.backtrack_window
  iam_enabled            = var.iam_enabled
  instance_identifier    = var.instance_identifier
  instance_count         = var.instance_count
  kms_alias_aurora       = var.kms_alias_aurora
  tags                   = var.tags
}
