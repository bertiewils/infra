variable "profile" {
  description = "AWS Profile"
  type        = string
  default     = "terraform"
}

variable "aws_region" {
  description = "AWS resource region"
  type        = string
  default     = "eu-west-2"
}

variable "ec2_enable" {
  description = "Enable EC2"
  type        = bool
  default     = true
}

variable "rds_enable" {
  description = "Enable RDS"
  type        = bool
  default     = true
}

variable "ec2_ssh_key_name" {
  description = "The SSH Key Name"
  type        = string
  default     = "ansible-key"
}

variable "ec2_ssh_key_public" {
  description = "Path to the SSH Public Key"
  type        = string
  sensitive   = true
  default     = "../../files/id_rsa.ansible.pub"
}

variable "rds_user" {
  description = "Region for AWS resources"
  type        = string
  sensitive   = true
  default     = "changeme"
}

variable "rds_password" {
  description = "Region for the RDS database"
  type        = string
  sensitive   = true
  default     = "password123"
}
