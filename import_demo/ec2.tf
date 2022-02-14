resource "aws_instance" "ec2_instance_using_automation" {
    ami           = "ami-0b898040803850657"
    instance_type =  "t2.micro"
    tags          = {
      "Name"      = "ec2_instance_using_automation"
    }  
}