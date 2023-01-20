resource "dynatrace_management_zone" "TestZone" {
  name = "${var.app_name} - ${var.environment}"
  rules {
    type = "PROCESS_GROUP" 
    enabled = true 
    propagation_types = ["PROCESS_GROUP_TO_HOST","PROCESS_GROUP_TO_SERVICE"] 
    conditions {
      key {
        type = "STATIC" 
        attribute = "PROCESS_GROUP_TAGS" 
      }
      tag {
        # negate = false 
        operator = "EQUALS" 
        value {
          context = "CONTEXTLESS" 
          key = "Environment"
          value = "${var.environment}"
        }
      }
    }
    conditions {
      key {
        type = "STATIC" 
        attribute = "PROCESS_GROUP_TAGS" 
      }
      tag {
        # negate = false 
        operator = "EQUALS" 
        value {
          context = "CONTEXTLESS" 
          key = "Team"
          value = "${var.team}"
        }
      }
    }
  }
  rules {
    type = "PROCESS_GROUP" 
    enabled = true 
    propagation_types = ["PROCESS_GROUP_TO_HOST","PROCESS_GROUP_TO_SERVICE"] 
    conditions {
      key {
        type = "STATIC" 
        attribute = "PROCESS_GROUP_TAGS" 
      }
      tag {
        # negate = false 
        operator = "TAG_KEY_EQUALS" 
        value {
          context = "CONTEXTLESS" 
          key = "EnvironmentY" 
        }
      }
    }
    conditions {
      key {
        type = "STATIC" 
        attribute = "PROCESS_GROUP_TAGS" 
      }
      tag {
        # negate = false 
        operator = "TAG_KEY_EQUALS" 
        value {
          context = "CONTEXTLESS" 
          key = "TeamX" 
        }
      }
    }
  }
}

