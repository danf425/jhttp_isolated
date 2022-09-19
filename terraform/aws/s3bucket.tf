provider "aws" {
  region                  = var.aws_region 
#  profile                 = var.aws_profile
  access_key             = var.access_key
  secret_key             = var.secret_key
#  shared_credentials_file = var.aws_credentials_file

  # Make it faster by skipping something
#  skip_get_ec2_platforms      = true
#  skip_metadata_api_check     = true
#  skip_region_validation      = true
#  skip_credentials_validation = true
#  skip_requesting_account_id  = true
}

resource "aws_s3_bucket" "b" {
  bucket = var.bucket_name

  tags = {
    Name        = "temp_bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
