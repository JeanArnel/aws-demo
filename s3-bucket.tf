resource "aws_s3_bucket" "bucket1" {
    count=2
    tags = {
        name="test-bucket-${count.index}"
        }
    
}
resource "aws_s3_bucket_versioning" "bucket1" {
  bucket = aws_s3_bucket.bucket1.id

  versioning_configuration {
    status = "Disabled"
  }
}

