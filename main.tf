resource "random_string" "random_suffix" {
  length  = 8
  special = false
  upper   = false
}

locals {
  name_prefix = "pbp"
  domain = lower(format("%v", var.domain))
  environment = var.environment == null ? null : lower(format("%v", var.environment))
  service_name = var.service_name == null ? random_string.random_suffix.result : lower(format("%v", var.service_name))
  delimiter   = lower(format("%v", var.delimiter))

  resource_name  = environment == null ? trimsuffix(join(delimiter, [name_prefix, domain, service_name]), delimiter) : trimsuffix(join(delimiter, [name_prefix, domain, service_name, environment]), delimiter)

  final_name = format("%.50s", resource_name)
}
