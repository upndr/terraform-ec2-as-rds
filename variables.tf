variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "db_engine" {
  default = "mysql"
}

variable "db_username" {
  description = "Username for RDS DB"
  type        = string
}

variable "db_password" {
  description = "Password for RDS DB"
  type        = string
  sensitive   = true
}


variable "db_name" {
  default = "appdb"
}

variable "vpc_id" {}
