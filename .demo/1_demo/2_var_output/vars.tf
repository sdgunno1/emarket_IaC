
## Define variables block
variable "my_instance_type" {
  default     = "t2.small"
  type        = string 
  description = "EC2 instance type"
}

variable "my_ami" {
  default     = "ami-0225bc2990c54ce9a"
  type        = string
  description = "EC2 machine image"   
}
