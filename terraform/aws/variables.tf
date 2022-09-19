variable "aws_region" {
  default     = "us-east-1"
  description = "aws_region is the AWS region in which we will build instances"
}


# variable "aws_profile" {
#   default     = "default"
#   description = "aws_profile is the profile from your credentials file which we will use to authenticate to the AWS API."
# }

variable "access_key" {
  default = "temp"
}

variable "secret_key" {
  default = "temp"
}


variable "bucket_name" {
  default = "temp"
}

#variable "aws_credentials_file" {
#  default     = "~/.aws/credentials"
#  description = "aws_credentials_file is the file on your local disk from which we will obtain your AWS API credentials."
#}
