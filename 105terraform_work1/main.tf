#statefile and create s3 bucket
resource "aws_s3_bucket" "dev" {  #dev=remote
    bucket = "state-remote-storeguogoic"  #create a s3 file name"state-remote-store" and store state file there  
}
resource "aws_s3_bucket_versioning" "dev2" { #dev2=versioning remote
    bucket = aws_s3_bucket.dev.id
    versioning_configuration {
      status = "Enabled"
    }
}