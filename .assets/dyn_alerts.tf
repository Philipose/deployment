resource "dynatrace_alerting_profile" "FirstAlert" {
  display_name = "${var.app_name} - Environment - Default Alerting"
  mz_id = ""
  rules {
    tag_filter {
      include_mode = "INCLUDE_ALL"
      tag_filters {
        context = "CONTEXTLESS"
        key = "Environment"
        value = "${var.environment}"
      }
      tag_filters {
        context = "CONTEXTLESS"
        key = "App"
        value = "${var.app_name}"
      }
    }
    delay_in_minutes = 0
    severity_level   = "AVAILABILITY"
  }
  rules {
    tag_filter {
      include_mode = "INCLUDE_ALL"
      tag_filters {
        context = "CONTEXTLESS"
        key = "Environment"
        value = "${var.environment}"
      }
      tag_filters {
        context = "CONTEXTLESS"
        key = "App"
        value = "${var.app_name}"
      }
    }
    delay_in_minutes = 0
    severity_level   = "CUSTOM_ALERT"
  }
  rules {
    tag_filter {
      include_mode = "INCLUDE_ALL"
      tag_filters {
        context = "CONTEXTLESS"
        key = "Environment"
        value = "${var.environment}"
      }
      tag_filters {
        context = "CONTEXTLESS"
        key = "App"
        value = "${var.app_name}"
      }
    }
    delay_in_minutes = 0
    severity_level   = "ERROR"
  }
  rules {
    tag_filter {
      include_mode = "INCLUDE_ALL"
      tag_filters {
        context = "CONTEXTLESS"
        key = "Environment"
        value = "${var.environment}"
      }
      tag_filters {
        context = "CONTEXTLESS"
        key = "App"
        value = "${var.app_name}"
      }
    }
    delay_in_minutes = 0
    severity_level   = "MONITORING_UNAVAILABLE"
  }
  rules {
    tag_filter {
      include_mode = "INCLUDE_ALL"
      tag_filters {
        context = "CONTEXTLESS"
        key = "Environment"
        value = "${var.environment}"
      }
      tag_filters {
        context = "CONTEXTLESS"
        key = "App"
        value = "${var.app_name}"
      }
    }
    delay_in_minutes = 0
    severity_level   = "PERFORMANCE"
  }
  rules {
    tag_filter {
      include_mode = "INCLUDE_ALL"
      tag_filters {
        context = "CONTEXTLESS"
        key = "Environment"
        value = "${var.environment}"
      }
      tag_filters {
        context = "CONTEXTLESS"
        key = "App"
        value = "${var.app_name}"
      }
    }
    delay_in_minutes = 0
    severity_level   = "RESOURCE_CONTENTION"
  }
}
