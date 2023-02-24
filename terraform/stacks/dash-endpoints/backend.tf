terraform {
  backend "local" {
  }
  required_providers {
    newrelic = {
      xsource  = "newrelic/newrelic"
      version  = "~> 2.32.0"
    }
  }
}
