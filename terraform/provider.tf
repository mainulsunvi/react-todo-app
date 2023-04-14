terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
			version = "~> 3.0"
		}
	}
}

provider "aws" {
	region = var.aws_region
	access_key = var.aws_sectrets["accessKey"]
	secret_key = var.aws_sectrets["secretKey"]
}