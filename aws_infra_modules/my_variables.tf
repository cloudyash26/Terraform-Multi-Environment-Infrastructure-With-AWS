variable "my-env" {
  description = "This is the environment for the infrastructure"
  type = string
}

variable "ami_id" {
  description = "This is the ami_id for the ec2 instances"
  type = string
}

variable "instance_type" {
  description = "This is the instance_type for the ec instances"
  type = string
}

variable "instance_count" {
    description = "This is the count of the ec2 instances"
    type = number
}