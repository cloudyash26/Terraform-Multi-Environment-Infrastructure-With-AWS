resource "aws_default_vpc" "name" {
  
}

resource "aws_key_pair" "mykeys" {
  key_name = "${var.my-env}-my-test-dummy-instance-keys"
  public_key = file ("./aws_infra_modules/demo-terra-keys.pub")
}

resource "aws_security_group" "mysg" {
  name        = "${var.my-env}-mydemosg"
  description = "Allow user to connect"
  vpc_id      = aws_default_vpc.name.id
  ingress {
    description = "allow port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = " allow all outgoing traffic "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.my-env}-mydemosg"
  }
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name = aws_key_pair.mykeys.key_name
  vpc_security_group_ids = [ aws_security_group.mysg.id ]
  count = var.instance_count

  tags = {
    Name = "${var.my-env}-my-testdummy-bucket"
  }
}