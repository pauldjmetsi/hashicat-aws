module "s3-bucket" {
  source  = "app.terraform.io/metsi/s3-bucket/aws"
  version = "2.2.0"
  # insert required variables here

  bucket = "my-s3-bucket"
  acl    = "private"

  versioning = {
    enabled = true
  }

  bucket_prefix = var.prefix

}