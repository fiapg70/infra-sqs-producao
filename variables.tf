variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-east-1"  # Você pode definir o valor padrão desejado aqui
}

#variable "access_key" {
  #description = "AWS Access Key"
  #type        = string
#}

#variable "secret_key" {
 # description = "AWS Secret Key"
 # type        = string
#}

variable "aws_profile" {
  description = "AWS profile"
  type        = string
  default     = "default"  # Você pode definir o valor padrão desejado aqui
}