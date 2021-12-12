# terraform

## Get started

**Pre-requisites**

1. [terraform cli](https://www.terraform.io/downloads.html)  
1. [terraform-docs](https://github.com/terraform-docs/terraform-docs)

**Deploy**

```shell
terraform apply -y
```

**Validate**

```shell
aws --profile sa-code-test --endpoint-url=http://localhost:4566 dynamodb list-tables
```

The above is for localstack deployments. Replace the endpoint url as necessary.

## Terraform-docs

DO not update this README directly. Update the header.md file and then run the following command:

```bash
terraform-docs markdown . > README.md
```

The readme is checked by CI and will fail if not updated correctly.

## Modules

| Name | Source | Version |
|------|--------|---------|
| dynamodb_table | terraform-aws-modules/dynamodb-table/aws |  |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| dynamodb\_hash\_key | The hash or partition key | `string` | `"id"` | no |
| dynamodb\_key\_type | The type of the hash or partition key. (S)tring, (N)umber or (B)inary data | `string` | `"S"` | no |
| dynamodb\_read\_capacity | The read capacity of the DynamoDB instance | `number` | `5` | no |
| dynamodb\_table\_name | Name of the table to create in DynamoDB | `string` | n/a | yes |
| dynamodb\_write\_capacity | The write capacity of the DynamoDB instance | `number` | `7` | no |
| tags | Additional tags or overrides | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| dynamodb\_table\_arn | The ARN of the dynamoDB table |
| dynamodb\_table\_id | The ID of the dynamdodb table |
