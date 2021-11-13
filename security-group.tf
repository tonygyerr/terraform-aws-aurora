resource "aws_security_group" "rds" {
  name        = "${var.app_name}-rds-mysql"
  description = "Security group for aurora client"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = var.db_port
    to_port     = var.db_port
    protocol    = "tcp"
    cidr_blocks = var.private_db_subnets
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}