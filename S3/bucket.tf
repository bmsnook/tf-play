resource "aws_s3_bucket_acl" "demos3" {
    bucket = "${var.bucket_name}" 
    acl = "${var.bucket_acl_value}"
}
