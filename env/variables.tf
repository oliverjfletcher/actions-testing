/**
 * AWS Terraform Demo
 */
########################################################################
# Define variables to be used for SNS Topics and SNS Subscriptions
########################################################################
variable "standard_tags" {
  description = "Standards tags to be used for all AWS Resources"
  type        = map(any)
}

variable "sns_topic_asg_name" {
  description = "SNS topic name"
  type        = string
}

variable "sns_topic_protocol_email" {
  description = "SNS topic protocol email"
  type        = string
}

variable "sns_topic_endpoint_email" {
  description = "SNS topic email endpoint"
  type        = string
}

