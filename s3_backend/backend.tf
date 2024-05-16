terraform {
  backend "s3" {
    bucket = "rajeshbewafahai143"
    key    = "terraform.tfstate"
    region = "us-east-1"  
    dynamodb_table = "terafrom-state-lock-dynamo"
    encrypt = true
  

}

}