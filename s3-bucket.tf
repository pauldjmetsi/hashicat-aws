module "s3-bucket" {
  source  = "app.terraform.io/metsi/s3-bucket/aws"
  version = "2.2.0"
  # insert required variables here
  credentials "app.terraform.io" {
    # valid user API token:
    token = "CyPd3zCWDGwgbw.atlasv1.3vlKjztXO96CvfMRk91xfsGhEGnAUwiUAUbBNmzrSfG6QYcC6mx9w1RugowzqFKm070"
  }

  bucket = "my-s3-bucket"
  acl    = "private"

  versioning = {
    enabled = true
  }

  bucket_prefix = var.prefix
  
}