resource "aws_instance" "ec2-ins-tf" {
    ami           = "ami-0b898040803850657"
    instance_type =  "t2.micro"
    tags          = {
      "Name"      = "ec2-ins-using-terraform"
    }  
}