provider "aws" {
  
}
resource "aws_instance" "dev3" {
    ami = "ami-04ff98ccbfa41c9ad"
    instance_type = "t2.micro"
    key_name = "windows-demo"
    tags = {
      Name="tag2"
    }
}