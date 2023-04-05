terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.49.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAW5AW63DBVLTHTSXR"
  secret_key = "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"
}
