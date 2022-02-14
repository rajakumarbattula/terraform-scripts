resource "aws_instance" "Myfirstec2instacefromTerraform" {
    ami = "ami-0affd4508a5d2481b"
    instance_instance_type = "t2.micro"
    tags = {
        Name = "Ec2startedfromterraform"
    }  
    key_name = "./JenkinsKey.pem"
    user_data = <<-EOF
                  #!/bin/bash
                  yum update -y
                  yum install httpd -y
                  systemctl start httpd.service
                  systemctl enable httpd.service
                  echo "Hi friend, I am $(hostname -f) hosted by terraform" > /var/www/html/index.html"
                  EOF
}

