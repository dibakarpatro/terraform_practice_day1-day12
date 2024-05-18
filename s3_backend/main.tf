resource "aws_s3_bucket" "dev" {
  bucket = "rajeshbewafahai143"
}
resource "aws_dynamodb_table" "dev" {
  name = "terafrom-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
  attribute {
    name = "LockID"
    type = "S"
  }
}


resource "aws_instance" "dev" {
  ami = "ami-0bb84b8ffd87024d8"
  instance_type = "t2.micro"
  key_name = "windows-demo"
  tags = {
    Name = "bheem"
  }
}
