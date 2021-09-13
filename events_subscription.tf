resource "aws_db_event_subscription" "cluster_event_subscription" {
  count            = var.create_event_subscription ? 1 : 0
  name             = "${var.cluster_identifier}-cluster-event-sub"
  sns_topic        = var.sns_topic
  source_type      = "db-cluster"
  source_ids       = ["${aws_rds_cluster.rds.id}"]
  event_categories = var.cluster_event_categories
}

resource "aws_db_event_subscription" "cluster_instance_event_subscription" {
  count            = var.create_event_subscription ? 1 : 0
  name             = "${var.cluster_identifier}-instance-event-sub"
  sns_topic        = var.sns_topic
  source_type      = "db-instance"
  source_ids       = ["${aws_rds_cluster_instance.rds[count.index].id}"]
  event_categories = var.cluster_instance_event_categories
}
