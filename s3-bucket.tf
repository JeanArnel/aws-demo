resource "aws_s3_bucket" "bucket1" {
    count=2
    versioning_configuration {
    status = "Disabled"
  }
    tags = {
        name="test-bucket-${count.index}"
        }
    
}

