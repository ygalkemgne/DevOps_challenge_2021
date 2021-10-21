# Create ec2 instace on AWS
resource "aws_instance" "Challenge2021" {
   ami = "${var.ami}"
   instance_type = "${var.instancetype}"
   subnet_id = "${var.subnet_1a}"
   vpc_security_group_ids = ["${aws_security_group.ec2-sg.id}"]
   user_data = "${file("nginx-install.sh")}"
  tags = {
     Name = "${var.dev}.${var.ops}"
   }
 }

# This is to create a security group
resource "aws_security_group" "ec2-sg" {
  name   = "${var.dev}.${var.ops}-sg"
  vpc_id = "vpc-db83f6b0"

# This is to open port 80
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}
  egress {
   from_port   = 0
   to_port     = 0
   protocol    = "-1"
   cidr_blocks = ["0.0.0.0/0"]
}
}
