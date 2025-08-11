# main.tf

# EC2 Instance
resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.allow_ssh.name]
  subnet_id      = aws_subnet.main.id  # Use the default subnet or create one.

  tags = {
    Name = "Example EC2 Instance"
  }

  # Optional: Enable SSH key pair for EC2 login
  key_name = "your-key-pair"  # Replace with your EC2 key pair name
}
