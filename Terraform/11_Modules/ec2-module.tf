module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "terraformaws-module-instance-${count.index}"
  count = 2
  instance_type          = "t2.micro"
  key_name               = "terraform-learn"
  monitoring             = true
  vpc_security_group_ids = ["sgr-0f055e2b549265c8f"]
  subnet_id              = "subnet-026322eee076bfef0"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}