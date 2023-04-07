output "instance_id" {
  description = "IDs instancias."
  value = aws_instance.vm.*.id
}
