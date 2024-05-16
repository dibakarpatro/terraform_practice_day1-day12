terraform {
  backend "s3" {
    bucket = "state-remote-storeguogoic"
    key    = "terraform.tfstate"
    region = "us-east-1"  
  }
}