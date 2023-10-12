# vpc variables
variable "vpc_cidr" {
    default     = "10.0.0.0/16"
    description = "vpc cidr block"
    type        = string
}

# public subnet variables
variable "public_subnet_az1_cidr" {
    default     = "10.0.0.0/24"
    description = "public subnet az1 cidr block"
    type        = string
}

variable "public_subnet_az2_cidr" {
    default     = "10.0.1.0/24"
    description = "public subnet az2 cidr block"
    type        = string
}

# private app subnet variables
variable "private_app_subnet_az1_cidr" {
    default     = "10.0.2.0/24"
    description = "private app subnet az1 cidr block"
    type        = string
}

variable "private_app_subnet_az2_cidr" {
    default     = "10.0.3.0/24"
    description = "private app subnet az2 cidr block"
    type        = string
}

# private data subnet variables
variable "private_data_subnet_az1_cidr" {
    default     = "10.0.4.0/24"
    description = "private data subnet az1 cidr block"
    type        = string
}

variable "private_data_subnet_az2_cidr" {
    default     = "10.0.5.0/24"
    description = "private data subnet az2 cidr block"
    type        = string
}

#security group variables
variable "ssh_location" {
    default     = "0.0.0.0/0"
    description = "the ip address that can ssh into the ec2 instances"
    type        = string
}

#rds snapshot variables
variable "database_snapshot_identifier" {
    default     = "arn:aws:rds:us-east-1:055929589774:snapshot:fleetcart-final-snapshot"
    description = "the database snapshot arn"
    type        = string
}

#rds instance variables
variable "database_instance_class" {
    default     = "db.t2.micro"
    description = "the database instance type"
    type        = string
}

#rds instance variable identifier
variable "database_instance_identifier" {
    default     = "dev-rds-db"
    description = "the database instance identifier"
    type        = string
}

#rds multi az variable
variable "multi_az_deployment" {
    default     = false
    description = "create a standby db instance"
    type        = bool
}

# application load balancer variables
variable "ssl_certificate_arn" {
    default     = "arn:aws:acm:us-east-1:055929589774:certificate/b636455e-3906-4b83-93a2-228907dcb7c1"
    description = "ssl certificate arn"
    type        = string
}