variable "aws_sectrets" {
	type = map
	sensitive = true
	default = {
		"accessKey" = "AKIAQGDWYYR43RH2LOUX"
		"secretKey" = "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"
	}
}

variable "aws_region" {
	default = "eu-west-1"
}