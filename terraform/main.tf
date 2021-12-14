## Main Terraform module code goes here
resource "aws_dynamodb_table" "dynamodb_table" {
  name           = var.dynamodb_table_name
  read_capacity  = var.dynamodb_read_capacity
  write_capacity = var.dynamodb_write_capacity
  hash_key       = var.dynamodb_hash_key

  attribute {
    name = var.dynamodb_hash_key
    type = var.dynamodb_key_type
  }

  tags = local.tags
}
