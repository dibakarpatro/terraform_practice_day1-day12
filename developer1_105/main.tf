#remote_statefile_configurarion
provider "aws" {
}
resource "aws_s3_bucket" "dev" {
    bucket = "ullululuvgiug998"
  
}
resource "aws_dynamodb_table" "dynamo" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
  attribute {
    name = "LockID"
    type = "S"
  }
}