resource "aws_instance" "my-ec2-test" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  tags = {
    "Name" : "name-my-ec2-test"
    "Tag2" : "In-place updated of ec2 by terraform"
  }
}


# Multi resource using meta-argument count
resource "aws_instance" "my-multi-ec2" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  count         = 5
  tags = {
    "Name" = "my-multi-ec2-${count.index}"
  }
}