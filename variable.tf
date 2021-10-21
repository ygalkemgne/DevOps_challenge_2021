variable "ami" {
  description = "The ami for EC2 instance"
  type        = string
  default     = "ami-074cce78125f09d61"
}
variable "subnet_1a" {
  description = "EC2 instance subnet"
  type        = string
  default     = "subnet-3364af4e"
}
variable "dev" {
  description = "EC2 instance"
  type        = string
  default   = "ec2_instance"
}

variable "ops" {
  description = "name"
  type        = string
  default     = "challenge"
}
variable "instancetype" {
  description = "type of instance"
  type        = string
  default     = "t2.micro"
}
variable "region" {
  description = "this is the region of the EC2 instance"
  type        = string
  default     = "us-east-2"

}

