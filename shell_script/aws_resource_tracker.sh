#!/bin/bash

################################
# Author: Vivek Sangwan
# Date: 21/01/24
#
# Version: v1
#
# This script will report the AWS resource usuage 
#########################

set -x

# List of s3 buckets
aws s3 ls

# List of ec2 Instance (Instance Id only)
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List of lambda functions
aws lambda list-functions

#List IAM users
aws iam list-users