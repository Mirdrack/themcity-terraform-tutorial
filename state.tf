# Terraform state file setup

/*# Create an S3 bucket to store the state file in
resource "aws_s3_bucket" "terraform-state-storage-s3" {
  bucket = "terraform-state-storage"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  tags {
    Name = "Terraform State Store S3"
    Project = "Terraform Tutorial"
  }
}*/

# Create a dynamodb table for locking the state file
/*resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
 
  tags {
    Name = "DynamoDB Terraform State Lock Table"
  }
}*/