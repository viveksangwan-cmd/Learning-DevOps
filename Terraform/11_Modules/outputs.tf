output "aws-ec2-instance-ips" {
    description = "Public IP address for the ec2 instace"
    value = module.ec2_instance.*.public_ip
}