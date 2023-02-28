# how to use this module
```shell
module "customized_resource_name" {
  source = "../../"
  environment   = "production"
  service_name  = "foobar"
  domain        = "reporting"
  delimiter     = "--"
}
```
