variable "environment" {
  type        = string
  default     = null
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
  validation {
    condition     = var.attributes.environment == "development" || var.attributes.environment == "production"
    error_message = "Unsupported environment name."
  }
}

variable "service_name" {
  type        = string
  default     = ""
  description = "Service name"
  validation {
    condition     = length(regexall("[^a-zA-Z0-9]", var.attributes.service_name)) == 0
    error_message = "Unsupport service_name."
  }
}

variable "domain" {
  type        = string
  default     = ""
  description = "Domain Name"
  nullable = false
  validation {
    condition     = var.attributes.domain == "reporting" || var.attributes.domain == "data" || var.attributes.domain == "platform"  || var.attributes.domain == "frontend" || var.attributes.domain == "backend"
    error_message = "Unsupported domain name."
  }
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used."
}
