resource "aws_instance" "my-ec2-test"{
    ami = "ami-03f4878755434977f"
    instance_type = "t2.micro"
    tags = {
      "Name" : "name-my-ec2-test"
      "Tag2" : "In-place updated of ec2 by terraform"
    }
}