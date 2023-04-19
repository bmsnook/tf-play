provider "aws" {
    access_key  = var.aws_access_key
    secret_key  = var.aws_secret_key
    region      = var.region
}

data "aws_caller_identity" "current" {}
data "aws_iam_session_context" "current" {
	arn = data.aws_caller_identity.current.arn
}

variable "additional_tags" {
	account_id      = data.aws_caller_identity.current.account_id
	issuer_name     = data.aws_caller_identity.current.issuer_name
	issuer_id       = data.aws_caller_identity.current.issuer_id
	issuer_arn      = data.aws_caller_identity.current.issuer_arn
	session_name    = data.aws_caller_identity.current.session_name
}



#output "account_id" {
#    value = data.aws_caller_identity.current.account_id
#}
#output "caller_arn" {
#    value = data.aws_caller_identity.current.arn
#}
#output "caller_user" {
#    value = data.aws_caller_identity.current.user_id
#}

module "s3_data_bucket" {
#    source	= "git:https://github.com/terraform-aws-modules/terraform-aws-s3-bucket"
	source	= "git@github.com:terraform-aws-modules/terraform-aws-s3-bucket.git"

#    aws_region      = var.region

    bucket_prefix   = var.bucket_prefix

#    target_bucket   = "logging-bucket"

#    target_bucket   = null

	tags = merge( 
#		local.resource_tags,
#		var.env_tags
		var.tags
	)
}

