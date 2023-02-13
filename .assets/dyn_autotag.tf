resource "dynatrace_autotag" "EnvironmentTag" {
  rules {
      conditions {
        key {
          attribute = "HOST_NAME"
          type = "STATIC"
        }
        string {
          operator = "EXISTS"
          value = null
          negate = false
          case_sensitive = null
        }
      }
    enabled      = true
    type         = "HOST"
    value_format = "${var.environment}"
    normalization     = "LEAVE_TEXT_AS_IS"
  }
  name = "Environment"
}