variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI id for join devops RHEL9"
  
}

variable "instance_type" {
     type = string
    default = "t2.micro"
    description = "instance type"
}

variable "ec2_tags" {
    type = map(string)
    default = {
        Name = "Hello world"
        Purpose = "variables.demo"
    }
}

variable "sg_name" {
    default = "vars-file-allow_all"
}

variable "sg_description" {
    default = "allowing all traffic"
}

variable "from_port" {
    type = number
    default = 0
}

variable "to_port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list(string) 
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    type = map(string)
    default =  {
        Name = "allow_all"
    }
  
}

variable "environment" {
    type = string
    default = "prod"
}
