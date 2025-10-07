variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI id for join devops RHEL9"
  
}
variable "instance_type"{
  default = {
    dev = "t2.micro"
    prod = "t2.small"
  }
}

variable "project" {
    default = "roboshop"
}

# variable "environment" {
    
# }


variable "common_tags" {
  
  default = {
    project = "Roboshop"
    terraform = true
  }
}
variable "sg_name" {
  default  = "allow-all"
  
}
variable "sg_description" {
  default  = "allow all ports from all ip"
  
}

variable "instances" {
  default = ["mongodb" , "redis"]
}

variable "from_port" {
  default = 0

}
variable "to_port" {
  default = 0
}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
}


