terraform {
  backend "local" {
  }
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "~> 2.32.0"
    }
  }
}
