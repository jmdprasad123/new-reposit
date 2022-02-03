resource "aws_instance" "web1" {
  ami                    = "ami-0851b76e8b1bce90b"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public[0].id
  vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
  key_name               = "NewProjectDP"
  user_data              = <<EOF
#!/bin/bash
sudo apt-get update
sudo apt-get install openjdk-8-jdk -y
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update -y
sudo apt-get install jenkins -y
sudo apt install git
EOF
}