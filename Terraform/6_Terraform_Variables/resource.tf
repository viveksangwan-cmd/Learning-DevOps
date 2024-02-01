resource "aws_instance" "variable-my-ec2" {
  ami           = var.aws_ec2_free_tier_ami
  instance_type = var.aws_ec2_instance
  count         = var.aws_ec2_count
  tags          = var.aws_default_tags
}