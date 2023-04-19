# 
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_session_context

#data "aws_caller_identity" "current" {}
#data "aws_iam_session_context" "current" {
#	arn = data.aws_caller_identity.current.arn
#}


#locals {
#	resource_tags = {
#		account_id      = data.aws_caller_identity.current.account_id
#		issuer_name     = data.aws_caller_identity.current.issuer_name
#		issuer_id       = data.aws_caller_identity.current.issuer_id
#		issuer_arn      = data.aws_caller_identity.current.issuer_arn
#		session_name    = data.aws_caller_identity.current.session_name
#	}
#}

