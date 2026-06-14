output "bastion_public_ip" {
  description = "Public IP of bastion host"
  value       = aws_instance.bastion.public_ip
}

output "private_instance_ip" {
  description = "Private IP of private EC2"
  value       = aws_instance.private.private_ip
}