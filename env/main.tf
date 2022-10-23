######################################################################
# Define SNS Topic for ASG Notifcation
######################################################################
resource "aws_sns_topic" "asg_notifcations_topic" {
  name = var.sns_topic_asg_name
  tags = merge(
    {
      "name" = var.sns_topic_asg_name
    },
    var.standard_tags,
  )
}

######################################################################
# Define SNS Subscription for ASG Notifcation
######################################################################
resource "aws_sns_topic_subscription" "asg_notifcations_subscription" {
  topic_arn = aws_sns_topic.asg_notifcations_topic.arn
  protocol  = var.sns_topic_protocol_email
  endpoint  = var.sns_topic_endpoint_email
}