terraform {
  required_providers {
    dynatrace = {
      source = "dynatrace-oss/dynatrace"
      version = "1.12.1"
    }
  }
}

provider "dynatrace" {
  dt_env_url    = "${var.dt_env_url}"
  dt_api_token  = "${var.dt_api_token}"
}

