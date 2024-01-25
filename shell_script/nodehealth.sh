################################
# Author: Vivek Sangwan
# Date: 20/01/24
#
# This scripts output the node health (Learning Bash Shell Scripting)
# Version: v1
#########################

set -x # Debug Mode
set -e # exit the script if there is any error 
# set -o pipefail

ps  | grep bash | awk -F" " '{print $4}'

df -h

free -g

nproc