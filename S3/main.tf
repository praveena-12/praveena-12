
resource "aws_s3_bucket" "praveenaa-demo-bucket" {
  bucket_prefix = var.bucket_prefix
  acl    = var.acl

  object_lock_enabled = var.object_lock_enabled
  
  versioning {
    enabled = var.versioning
  }
 
  tags = var.tags
}


resource "aws_s3_bucket_object" "sample"{
  bucket ="praveenaa-bucket-202220220802115208547400000001"
  key = "sample3"
  source = "D:\\example\\sample3.txt"
  etag = filemd5("D:\\example\\sample3.txt")

}

