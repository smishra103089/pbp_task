# how to use this module
module "customized_resource_name" {
  source = "../../"
  environment   = "production"
  service_name  = "foobar"
  domain        = "reporting"
  delimiter     = "--"
}
