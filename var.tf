variable "sns_topic_name" {
  type = string
  description = "sns topic name"
  default = "SNS"
}

variable "sns_subscription_email_address_list" {
  type = string
  description = "List of email addresses as string(space separated)"
  default = "vvrb498@gmail.com bvivekvardhan@gmail.com"
}
