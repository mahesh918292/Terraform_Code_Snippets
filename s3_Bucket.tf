variable "bucket_name"{ // "bucket_name" is the name of the variable
    description = "Bucket_Name" // description is used to specify what that variable is for
    type=string // data type
    default="sample-bucket-43446556" // Original value
}
// resource is used to define the specific feature or infrastructure
resource "aws_s3_bucket" "sample-terraform-bucket" { 
    bucket=var.bucket_name // using variable
    tags={ // defines tags for s3 
        Environment="Testing"
    }
}
// versoning
resource "aws_s3_bucket_versioning" "enable_versioning" {
  bucket = aws_s3_bucket.sample-terraform-bucket.id // Versoning for specific bucket

  versioning_configuration {
    status = "Enabled" // Enabling s3 versoning
  }
}
// By default public access is blocked thats why didnt mention that