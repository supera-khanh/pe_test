variable "dynamodb_table_name" {
    type = string
    description = "Name of the table to create in DynamoDB"
}

variable "dynamodb_read_capacity" {
  type        = number
  description = "The read capacity of the DynamoDB instance"
  default     = 5
}

variable "dynamodb_write_capacity" {
  type        = number
  description = "The write capacity of the DynamoDB instance"
  default     = 7
}

variable "dynamodb_hash_key" {
  type        = string
  description = "The hash or partition key"
  default     = "id"
}

variable "dynamodb_key_type" {
  type        = string
  description = "The type of the hash or partition key. (S)tring, (N)umber or (B)inary data"
  default     = "S"
}

variable "tags" {
  type        = map(string)
  description = "Additional tags or overrides"
  default     = {}
}
