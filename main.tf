terraform {
  required_providers {
    aws = {
      source = "terraform/aws"
    }
  }
}
provider "aws" {
  region = var.region
}

module "crud" {
  source  = "app.terraform.io/TerraGil/crud/stratos"
  name    = var.name
  region  = var.region
  prefix  = var.prefix
  version = "1.0.0"
}
