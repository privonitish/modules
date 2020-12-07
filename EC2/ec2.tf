resource "aws_instance" "web" {
  ami           = "ami-08d9a394ac1c2994c"
  instance_type = "${var.itype}"
  subnet_id = "subnet-02d633f9f90d3817a"
  user_data     = <<-EOT
    #!/bin/bash
    sudo amazon-linux-extras install nginx1 -y
    sudo systemctl enable nginx
    sudo systemctl start nginx
    EOT


    tags = {
      Name = "njoshi-terraform-ec2"
  }

resource "aws_instance" "web1" {
  ami = "ami-3a674d5a"
  instance_type = "t2.micro"
  subnet_id = "subnet-02d633f9f90d3817a"

}
