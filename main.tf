terraform {
  backend "local" {}
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.1.0"
    }
  }
}

resource "random_string" "random" {
  length  = 16
  special = false
  upper   = false
}

output "random_string" {
  value = random_string.random.result
}