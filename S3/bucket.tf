resource "aws_s3_bucket" "tftest00" {
  bucket = "${var.bucket_name}"
  tags = {
    name        = "Terraform Test Bucket"
    env         = "dev"
    intent      = "learn"
  }
}

resource "aws_s3_bucket_ownership_controls" "tftest00" {
  bucket = aws_s3_bucket.tftest00.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "tftest00" {
  depends_on = [
        aws_s3_bucket_ownership_controls.tftest00
  ]

  bucket = aws_s3_bucket.tftest00.id
  acl = "${var.bucket_acl_value}"
}

