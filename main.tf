resource "aws_instance" "vm" {
  count = var.qntd_instancias

  ami           = data.aws_ami.linux.image_id
  instance_type = "t3.micro"
  key_name      = var.key_instance

  tags = {
    Name = "${var.projeto} ${count.index}"
  }
}
