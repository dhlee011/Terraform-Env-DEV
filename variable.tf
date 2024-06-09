variable "dev_vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}


variable "dev_subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}


variable "dev_az" {
  description = "Availability zone for the subnet"
  type        = string
}

variable "dev_sg_ingress_port" {
  description = "SG_port"
  type        = number
}

variable "dev_sg_ingress_cidr_block" {
  description = "SG_port"
  type        = list(string)
}

variable "dev_ami" {
  description = "AMI"
  type        = string
}

variable "dev_ec2_type" {
  description = "ec2_type"
  type        = string
}



