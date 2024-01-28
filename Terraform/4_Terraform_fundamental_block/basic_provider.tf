# Aws Provider block
provider "aws"{
  region = "ap-south-1"
  profile = "default"
}



# Multi provider 
provider "aws"{
  region = "us-west-1"
  profile = "default"
  alias = "aws-west-1"
}
