resource "aws_s3_bucket" "log_archive" {
  bucket = "neetu-log-archive"
}

resource "aws_s3_bucket_public_access_block" "log_archive_block" {
  bucket                  = aws_s3_bucket.log_archive.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}