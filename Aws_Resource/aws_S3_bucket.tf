resource "aws_s3_bucket" "enterprise_backend_state" {
    bucket = "dev-applications-backend-state-in28minutes-abc"

    lifecycle {
        prevent_destroy = true
    }

#    versioning {
#        enabled = true
#    }
#
#    server_side_encryption_configuration {
#        rule {
#            apply_server_side_encryption_by_default {
#                sse_algorithm = "AES256"
#            }
#        }
#    }

}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.enterprise_backend_state.id
  versioning_configuration {
    status = "Enabled"
  }
}
