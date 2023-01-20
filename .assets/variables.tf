variable "environment" {
  description = "Current Environment"
  type = string
}

variable "app_name" {
  description = "Name of the application"
  type = string
}

variable "app_version" {
  description = "Version of the application"
  type = string
}

variable "team" {
  description = "Team assigned to the application"
  type = string
}

variable "dt_env_url" {
  description = "URL of Dynatrace Tenant"
  type = string
}

variable "dt_api_token" {
  description = "Token to Authenticate with Dynatrace"
  type = string
}

