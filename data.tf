# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document
data "aws_iam_policy_document" "sevenfood_producao_queue_policy" {
  statement {
    sid    = "shsqsstatement"
    effect = "Allow"
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
    actions = [
      "sqs:SendMessage",
      "sqs:ReceiveMessage"
    ]
    resources = [
      aws_sqs_queue.sevenfood_producao_queue.arn
    ]
  }
}


data "aws_iam_policy_document" "sevenfood_producao_status_queue_policy" {
  statement {
    sid    = "shsqsstatement"
    effect = "Allow"
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
    actions = [
      "sqs:SendMessage",
      "sqs:ReceiveMessage"
    ]
    resources = [
      aws_sqs_queue.sevenfood_producao_status_queue.arn
    ]
  }
}