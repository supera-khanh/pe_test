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

**BUG**: the above command does not return the table data. Localstack cannot see the table that terraform builds.

## Terraform-docs

DO not update this README directly. Update the header.md file and then run the following command:

```bash
terraform-docs markdown . > README.md
```

The readme is checked by CI and will fail if not updated correctly.
