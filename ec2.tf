resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb" 
  instance_type = "t2.micro"
  vpc_security_group_ids= [aws_security_group.roboshop.id]

  tags = {
    Name = "HelloTerraform1"
  }
}


resource "aws_security_group" "roboshop" { #this is terraform name
  name        = var.sg-name # this is for aws name 
  description = var.sg-description
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "allow all ports"
    from_port        = var.sg-inbound-from_port
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.sg-cidr_blocks
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "robosho-all-aws1"
  }
}

