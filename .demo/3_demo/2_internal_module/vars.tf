
variable "aws_region" {
  default     = null
  type        = string
  description = "AWS region"
}

variable "mariadb_instance_class" {
  default     = null 
  type        = string
  description = "Mariadb instance size"
}

variable "mariadb_master_user_name" {
  default     = null
  type        = string
  description = "Maiadb master user name"
}

