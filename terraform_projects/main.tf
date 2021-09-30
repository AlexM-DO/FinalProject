resource "aws_instance" "jenkins" {
  ami           = var.ami_id
  key_name = var.key_name
  instance_type = var.instance_type
  security_groups= [var.security_group]
  tags= {
    Name = var.tag_name
  }
}

# Create Elastic IP address
#resource "aws_eip" "jenkins" {
#  vpc      = true
#  instance = aws_instance.jenkins.id
#tags= {
#    Name = "jenkins_elastic_ip"
#  }
#}

resource "aws_instance" "agent1" {
  ami           = var.ami_id
  key_name = var.key_name
  instance_type = var.instance_type
  security_groups= [var.security_group]
  tags= {
    Name = var.tag_name
  }
}

# Create Elastic IP address
#resource "aws_eip" "agent1" {
#  vpc      = true
#  instance = aws_instance.agent1.id
#tags= {
#    Name = "agent1__elastic_ip"
#  }
#}

resource "aws_instance" "production" {
  ami           = var.ami_id
  key_name = var.key_name
  instance_type = var.instance_type
  security_groups= [var.security_group]
  tags= {
    Name = var.tag_name
  }
}

# Create Elastic IP address
#resource "aws_eip" "production" {
#  vpc      = true
#  instance = aws_instance.production.id
#tags= {
#    Name = "production_elastic_ip"
#  }
#}
