resource "aws_instance" "my-ec2-test" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  tags = {
    "Name" : "name-my-ec2"
    "Tag2" : "In-place updated of ec2 by terraform"
  }
}


# Multi resource using meta-argument 

# Count
resource "aws_instance" "my-multi-ec2" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  count         = 5
  tags = {
    "Name" = "my-multi-ec2-${count.index}"
  }
}


# Map - for_each
resource "aws_instance" "my-multi-ec2-map" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  tags = {
    "Name" = "${each.key}-${each.value}"
  }
  for_each = {
    "dev"  = "my-multi-ec2"
    "test" = "test-ec2"
  }
}

# Set of strings 
resource "aws_iam_user" "dev-users" {
  name     = each.value # each.key = each.value
  for_each = toset(["B-Dev", "A-Dev"])
  lifecycle {
    create_before_destroy = true
    ignore_changes = [ tags ]
  }
}
