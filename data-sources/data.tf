data "aws_ami" "joindevops" {
    #executable_users = ["self"]
   # owners = [ "989088456804" ]
    most_recent = true
    filter {
        name = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }
      filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  }


output "ami_id" {
    value = data.aws_ami.joindevops.id

}
