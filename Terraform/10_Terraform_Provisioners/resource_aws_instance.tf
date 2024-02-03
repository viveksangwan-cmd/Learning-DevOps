#  Added network Security Group to allow connect through ssh
resource "aws_instance" "my-ec2-instance" {
  ami           = var.aws_ec2_free_tier_ami
  instance_type = var.aws_ec2_instance
  count         = var.aws_ec2_count
  tags          = var.aws_default_tags


  connection {
    type = "ssh"
    host = self.public_ip
    user = "ec2-user"
    password = ""
    private_key = file("learning-terrform.pem")
  }

  # Copies File apps/file-copy.html  -> /temp/file-copy.html
  provisioner "file" {
    source = "apps/file-copy.html"
    destination = "/tmp/file-copy.html"
  }

  # Copies string in content into /tmp/file.log
  provisioner "file" {
    content = "${terraform.workspace}: ami used: ${self.ami}"
    destination = "/tmp/file.log"
  }


  # Copies all files and folders in apps/app2 -> /temp
  provisioner "file" {
    source = "apps/app2"
    destination = "/tmp"
  }
}