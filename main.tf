### This is just to test the pipeline

resource "aws_s3_bucket" "test_bucket" {
  bucket = "terraform-test-bucket-123456789"
  acl    = "private"
}