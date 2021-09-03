resource "aws_cloudwatch_metric_alarm" "svc_alarm_aurora_cpu" {
  alarm_name          = "${var.cluster_identifier}-cpu-max-utilization"
  comparison_operator = "${var.cloud_watch_mh_comparison_operator}"
  evaluation_periods  = "${var.cloud_watch_mh_evaluation_periods}"
  metric_name         = "${var.cloud_watch_mh_metric_name}"
  namespace           = "${var.cloud_watch_mh_namespace}"
  period              = "${var.cloud_watch_mh_period}"
  statistic           = "${var.cloud_watch_mh_statistic}"
  threshold           = "${var.cloud_watch_mh_threshold}"
  treat_missing_data  = "${var.cloud_watch_mh_missing_data}"
  # alarm_actions = [
  #   local.is_prod ? "arn:aws:sns:${var.region}:${data.aws_caller_identity.current}:cloudwatch-alarm-funnel" : "arn:aws:sns:${var.region}:${data.aws_caller_identity.current}:cloudwatch-alarm-funnel",
  # ]
  alarm_description = format(
    "%s|%s|%s-%s|%s",
    var.cloud_watch_mh_description,
    var.environment,
    "INFO",
    var.cluster_identifier,
    "reader"
  )

  dimensions = {
    DBClusterIdentifier = "${var.cluster_identifier}"
    ROLE                = "${var.cluster_role}"
  }
}
