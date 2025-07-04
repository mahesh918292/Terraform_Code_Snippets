resource "aws_s3_object" "index" {
  bucket       = aws_s3_bucket.sample_terraform_bucket.bucket
  key          = "index.html"
  source       = "index.html"
  content_type = "text/html"
}

resource "aws_s3_object" "error" {
  bucket       = aws_s3_bucket.sample_terraform_bucket.bucket
  key          = "error.html"
  source       = "error.html"
  content_type = "text/html"
}
