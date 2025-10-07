variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "AMI id for join devops RHEL9"

}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "instance type"
}

variable "ec2_tags" {
  type = map(string)
  default = {
    Name    = "Roboshop"
    Purpose = "variables.demo"
  }
}

variable "sg_name" {
  default = "allow_all"
}

variable "sg_description" {
  default = "allowing all traffic"
}

variable "from_port" {
  type    = number
  default = 0
}

variable "to_port" {
  type    = number
  default = 0
}

variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map(string)
  default = {
    Name = "allow_all"
  }

}

variable "environment" {
  type    = string
  default = "prod"
}

variable "instances" {
  type    = list(string)
  default = ["mysql", "redis", "rabbitmq", "mongodb"]
}

# variable "instances" {
#     default = {
#         "mongodb" = "t3.small" #each keyword is assigned
#         "redis" = "t3.micro"
#         "mysql" = "t3.small"
#         "rabbitmq" = "t3.micro"
#     }

# }

variable "zone_id" {
  default = "Z03949492VIIV3UN1MEFO"
}
variable "domain_name" {
  default = "raheemweb.fun"
}

variable "ingress_ports" {
  default = [
    {
      from_port = 22
      to_port   = 22
    },
    {
      from_port = 80
      to_port   = 80
    },
    {
      from_port = 8080
      to_port   = 8080
    }
  ]

}

variable "common_tags" {
  
  default = {
    project = "Roboshop"
    terraform = true
  }
}