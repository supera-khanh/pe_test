## Main Terraform module code goes here
module "dynamodb_table" {
  source = "terraform-aws-modules/dynamodb-table/aws"

  name           = var.dynamodb_table_name
  read_capacity  = var.dynamodb_read_capacity
  write_capacity = var.dynamodb_write_capacity
  hash_key       = var.dynamodb_hash_key

  attributes = [
    {
      name = var.dynamodb_hash_key
      type = var.dynamodb_key_type
    }
  ]

  tags = local.tags
}
