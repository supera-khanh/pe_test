locals {
  default_tags = {
    Automation  = "https://github.com/supera-khanh/pe_test"
    Terraform   = "true"
    Environment = "demo"
    Project     = "pe_test"
  }

  tags = merge(local.default_tags, var.tags)
}
