resource "aws_eip" "dev" {
  instance = aws_instance.dev.id
  vpc      = true
  tags = {
    Name = "dev"
  }
}
