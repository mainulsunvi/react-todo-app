variable "aws_sectrets" {
	type = map
	sensitive = true
	default = {
		"accessKey" = "Enter Access key"
		"secretKey" = "Enter Secret Key"
	}
}

variable "aws_region" {
	default = "eu-west-1"
}
