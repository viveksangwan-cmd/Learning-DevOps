resource "aws_instance" "my-ec2" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
}