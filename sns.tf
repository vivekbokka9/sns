/*resource "aws_sns_topic" "SNS" {
  name            = "SNS"
  display_name    = ""
  policy          = <<POLICY
{
  "Version": "2008-10-17",
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Sid": "__default_statement_ID",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": [
        "SNS:GetTopicAttributes",
        "SNS:SetTopicAttributes",
        "SNS:AddPermission",
        "SNS:RemovePermission",
        "SNS:DeleteTopic",
        "SNS:Subscribe",
        "SNS:ListSubscriptionsByTopic",
        "SNS:Publish",
        "SNS:Receive"
      ],
      "Resource": "arn:aws:sns:us-east-1:179137496897:SNS",
      "Condition": {
        "StringEquals": {
          "AWS:SourceOwner": "179137496897"
        }
      }
    }
  ]
}
POLICY
}
*/

resource "aws_sns_topic" "SNS" {
  name = "SNS"
  provisioner "local-exec" {
    command = "sh sns_subscription.sh"
    environment = {
      sns_arn = self.arn
      sns_emails = var.sns_subscription_email_address_list
    }
  }
}
