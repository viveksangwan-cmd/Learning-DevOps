output "first_aws_ec2_instance_public_ip" {
  description = "Public ip of first ec2 instance"
  value       = [ for instance in aws_instance.variable-my-ec2: instance.public_ip ]
#   sensitive = true
}