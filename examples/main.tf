resource "randmom_id" "rds" {
  byte_length = var.rds[password_length] * 3 / 4
}

resource "aws_secretsmanager_secret" "rds" {
  name = "${var.environment}/${var.secret_name}"
  tags = var.tags
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "rds" {
  secret_id = aws_secretsmanager_secret.rds.id
  secret_string = random_id.rds_password.b64
}

module "aurora" {
  source = "git::https://github.com/tonygyerr/terraform-aws-aurora.git"
  vpc_id                 = var.vpc_id
  app_name               = var.app_name
  environment            = var.environment
  subnet_name            = "${var.subnet_name}_${var.environment}"
  private_db_subnet_ids  = var.private_db_subnet_ids # module.vpc.private_db_sunets
  param_name             = var.param_name            #apidb_subnet_group_name
  role                   = var.role                  #api_rds_monitoring_arn
  max_allowed_packet     = var.max_allowed_packet
  cluster_identifier     = var.cluster_identifier
  vpc_security_group_ids = var.vpc_security_group_ids
  secret_name            = aws_secretsmanager_secret.rds.name #var.secret_name
  snapshot_ind           = var.snapshot_ind
  engine_mode            = var.engine_mode
  engine_version         = var.engine_version
  backtrack_window       = var.backtrack_window
  iam_enabled            = var.iam_enabled
  instance_identifier    = var.instance_identifier
  instance_count         = var.instance_count
  kms_alias_aurora       = var.kms_alias_aurora
  master_password        = aws_secretsmanager_secret_version.rds.secret_string #var.master_password
  tags                   = var.tags
}
