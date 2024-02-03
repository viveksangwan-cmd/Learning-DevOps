resource "aws_instance" "my-ec2-test" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  count         = "${terraform.workspace}" == "default" ? 2 : 1
  tags = {
    "Name" : "name-my-ec2-${terraform.workspace}"
    "Tag2" : "In-place updated of ec2 by terraform"
  }
}


output "aws_ec2_public_ip" {
  description = "Public ip's of ec2 instances"
  value       = aws_instance.my-ec2-test.*.public_ip
}