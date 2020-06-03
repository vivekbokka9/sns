provider "aws" {
  region  = "us-east-1"
}
resource "aws_instance" "web" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  subnet_id = "subnet-4a738e6b"
  user_data = "userdata.sh"
  iam_instance_profile = "servicerole"
  key_name = "vivek1"
  monitoring = true

  tags = {
    Name = "HelloWorld"
  }
}
