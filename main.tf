provider "aws" {
  region = "your-region-code"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "nextwork-unique-bucket-yourname-random-number" # Make sure this bucket name is globally unique by typing a long random number
  
  tags = {
    Project = "Create a S3 bucket with Terraform"
  }

}

resource "aws_s3_bucket_public_access_block" "my_bucket_public_access_block" {
  bucket = aws_s3_bucket.my_bucket.id

  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}
resource "aws_s3_object" "image" {
  bucket = aws_s3_bucket.my_bucket.id # Reference the bucket ID
  key    = "image.png" # Path in the bucket
  source = "image.png" # Local file path
}
