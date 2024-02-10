variable "aws_region" {
  description = "AWS region, where resources need to be created."
  type        = string
  default     = "ap-south-1"
}

variable "aws_ec2_free_tier_ami" {
  description = "AMI for free tier linux machine"
  type        = string
  default     = "ami-03f4878755434977f"
  validation {
    condition     = length(var.aws_ec2_free_tier_ami) > 4 && substr(var.aws_ec2_free_tier_ami, 0, 4) == "ami-"
    error_message = "Invalid AMI id"
  }
}

variable "aws_ec2_instance" {
  description = "AWS default ec2 instance type"
  type        = string
  default     = "t2.micro"
  # sensitive   = true
}

variable "aws_ec2_count" {
  description = "Count of aws instance been created"
  type        = number
  default = 1
}

variable "aws_default_tags" {
  description = "Default tags for aws resources"
  type        = map(string)
  default = {
    "Team"   = "champion"
    "region" = "mumbai"
  }
}