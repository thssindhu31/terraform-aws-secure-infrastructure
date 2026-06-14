output "bastion_sg_id" {
  description = "Bastion security group ID"
  value       = aws_security_group.bastion.id
}

output "private_sg_id" {
  description = "Private security group ID"
  value       = aws_security_group.private.id
}