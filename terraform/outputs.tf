output "dynamodb_table_arn" {
  description = "The ARN of the dynamoDB table"
  value       = aws_dynamodb_table.dynamodb_table.arn
}

output "dynamodb_table_id" {
  description = "The ID of the dynamdodb table"
  value       = aws_dynamodb_table.dynamodb_table.id
}
