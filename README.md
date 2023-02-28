# Terraform module for naming convention
Terraform (TF) module to help developers standardize the naming of AWS resources. The intent is for the TF module to be used by
the entire company when assigning names to their AWS resources.

## Requirements

| Name | Version |
|------|---------|
|terraform | >= 1.3.0|

## Providers

| Name | Version |
|------|---------|
|aws | >= 4.27.0 |

# Usage
```shell
module "customized_resource_name" {
  source = "../../"
  environment   = "production"
  service_name  = "foobar"
  domain        = "reporting"
  delimiter     = "--"
}
```
