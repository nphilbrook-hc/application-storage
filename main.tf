module "simple_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~>4.1.2"
  
  bucket_prefix = "plugincachedebugcreatedbucket-norf"
  force_destroy = true
}
