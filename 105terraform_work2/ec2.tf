#remote_statefile_configurarion
provider "aws" {
}
resource "aws_instance" "dev" {
    ami = "ami-04ff98ccbfa41c9ad"
    instance_type = "t2.micro"
    key_name = "windows-demo"
}
resource "aws_s3_bucket" "dev" {
    bucket = "teribaatonmeessauljyajiya"
  
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