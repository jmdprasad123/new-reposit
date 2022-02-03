variable "region" {
  default     = "ap-south-1"
  type        = string
  description = "Region of the VPC"
}


variable "cidr_block" {
  default     = "10.0.0.0/16"
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr_blocks" {
  default     = ["10.0.0.0/24"]
  type        = list(any)
  description = "List of public subnet CIDR blocks"
}

variable "private_subnet_cidr_blocks" {
  default     = ["10.0.1.0/24"]
  type        = list(any)
  description = "List of private subnet CIDR blocks"
}

variable "availability_zones" {
  default     = ["ap-south-1a", "ap-south-1b"]
  type        = list(any)
  description = "List of availability zones"
}


variable "s3_bucket_names" {
  type    = list(any)
  default = ["dev-bucket1.app", "uat-bucket2.app", "prod-bucket3.app"]
}