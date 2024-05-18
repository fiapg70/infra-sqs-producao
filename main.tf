resource "aws_sqs_queue" "sevenfood_producao_queue" {
  name                       = "sevenfood-producao-queue"
  delay_seconds              = 10
  visibility_timeout_seconds = 30
  max_message_size           = 2048
  message_retention_seconds  = 86400
  receive_wait_time_seconds  = 2
  sqs_managed_sse_enabled = true
}

resource "aws_sqs_queue" "sevenfood_producao_status_queue" {
  name                       = "sevenfood-producao-status-queue"
  delay_seconds              = 10
  visibility_timeout_seconds = 30
  max_message_size           = 2048
  message_retention_seconds  = 86400
  receive_wait_time_seconds  = 2
  sqs_managed_sse_enabled = true
}

resource "aws_sqs_queue_policy" "sevenfood_producao_queue_policy" {
  queue_url = aws_sqs_queue.sevenfood_producao_queue.id
  policy    = data.aws_iam_policy_document.sevenfood_producao_queue_policy.json

}

resource "aws_sqs_queue_policy" "sevenfood_producao_status_queue_policy" {
  queue_url = aws_sqs_queue.sevenfood_producao_status_queue.id
  policy    = data.aws_iam_policy_document.sevenfood_producao_status_queue_policy.json
}