resource "aws_sns_topic" "demo1" {
  name = var.topic_name

  tags ={
    team = var.team
}
}

resource "aws_sns_topic_subscription" "sns_topic_subscription" {
  topic_arn = aws_sns_topic.demo1.arn
  protocol  = var.protocol
  endpoint = var.endpoint
}


