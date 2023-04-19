# Controls if S3 bucket should be created
create_bucket = true

region = "us-east-1"


# Controls if S3 bucket should have ELB log delivery policy attached
attach_elb_log_delivery_policy = false

# Controls if S3 bucket should have ALB/NLB log delivery policy attached
attach_lb_log_delivery_policy = false

# Controls if S3 bucket should have deny non-SSL transport policy attached
attach_deny_insecure_transport_policy = false

# Controls if S3 bucket should require the latest version of TLS
attach_require_latest_tls_policy = false

# Controls if S3 bucket should have bucket policy attached (set to `true` to use value of `policy` as bucket policy)
attach_policy = false

# Controls if a user defined public bucket policy will be attached (set to `false` to allow upstream to apply defaults to the bucket)
attach_public_policy = true

# Controls if S3 bucket should have bucket inventory destination policy attached.
attach_inventory_destination_policy = false

# Controls if S3 bucket should have bucket analytics destination policy attached.
attach_analytics_destination_policy = false

# (Optional, Forces new resource) The name of the bucket. If omitted, Terraform will assign a random, unique name.
bucket = null

# (Optional, Forces new resource) Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket.
bucket_prefix = "bms-cc-test-general-tf-bucket00"

# (Optional) The canned ACL to apply. Conflicts with `grant`
acl = null

# (Optional) A valid bucket policy JSON document. Note that if the policy document is not specific enough (but still valid), Terraform may view the policy as constantly changing in a terraform plan. In this case, please make sure you use the verbose/specific version of the policy. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.
policy = null

# (Optional) A mapping of tags to assign to the bucket.
#tags = {
#	account_id      = data.aws_caller_identity.current.account_id
#	issuer_name     = data.aws_caller_identity.current.issuer_name
#	issuer_id       = data.aws_caller_identity.current.issuer_id
#	issuer_arn      = data.aws_caller_identity.current.issuer_arn
#	session_name    = data.aws_caller_identity.current.session_name
#}



# (Optional, Default:false ) A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable.
force_destroy = false

# (Optional) Sets the accelerate configuration of an existing bucket. Can be Enabled or Suspended.
acceleration_status = null

# (Optional) Specifies who should bear the cost of Amazon S3 data transfer. Can be either BucketOwner or Requester. By default, the owner of the S3 bucket would incur the costs of any data transfer. See Requester Pays Buckets developer guide for more information.
request_payer = null

# Map containing static web-site hosting or redirect configuration.
website = {}

# List of maps containing rules for Cross-Origin Resource Sharing.
cors_rule = []

# Map containing versioning configuration.
versioning = {}

# Map containing access bucket logging configuration.
logging = {}

# An ACL policy grant. Conflicts with `acl`
grant = []

# Bucket owner's display name and ID. Conflicts with `acl`
owner = {}

# The account ID of the expected bucket owner
expected_bucket_owner = null

# List of maps containing configuration of object lifecycle management.
lifecycle_rule = []

# Map containing cross-region replication configuration.
replication_configuration = {}

# Map containing server-side encryption configuration.
server_side_encryption_configuration = {}

# Map containing intelligent tiering configuration.
intelligent_tiering = {}

# Map containing S3 object locking configuration.
object_lock_configuration = {}

# Map containing bucket metric configuration.
metric_configuration = []

# Map containing S3 inventory configuration.
inventory_configuration = {}

# The inventory source account id.
inventory_source_account_id = null

# The inventory source bucket ARN.
inventory_source_bucket_arn = null

# Whether or not the inventory source bucket is also the destination bucket.
inventory_self_source_destination = false

# Map containing bucket analytics configuration.
analytics_configuration = {}

# The analytics source account id.
analytics_source_account_id = null

# The analytics source bucket ARN.
analytics_source_bucket_arn = null

# Whether or not the analytics source bucket is also the destination bucket.
analytics_self_source_destination = false

# Whether S3 bucket should have an Object Lock configuration enabled.
object_lock_enabled = false

# Whether Amazon S3 should block public ACLs for this bucket.
block_public_acls = false

# Whether Amazon S3 should block public bucket policies for this bucket.
block_public_policy = false

# Whether Amazon S3 should ignore public ACLs for this bucket.
ignore_public_acls = false

# Whether Amazon S3 should restrict public bucket policies for this bucket.
restrict_public_buckets = false

# Whether to manage S3 Bucket Ownership Controls on this bucket.
control_object_ownership = false

# Object ownership. Valid values: BucketOwnerEnforced, BucketOwnerPreferred or ObjectWriter. 'BucketOwnerEnforced': ACLs are disabled, and the bucket owner automatically owns and has full control over every object in the bucket. 'BucketOwnerPreferred': Objects uploaded to the bucket change ownership to the bucket owner if the objects are uploaded with the bucket-owner-full-control canned ACL. 'ObjectWriter': The uploading account will own the object if the object is uploaded with the bucket-owner-full-control canned ACL.
object_ownership = "ObjectWriter"

# Do you agree that Putin doesn't respect Ukrainian sovereignty and territorial integrity? More info: https://en.wikipedia.org/wiki/Putin_khuylo!
putin_khuylo = true

