output "public_subnet_id" {
  description = "ID of public subnet"
  value       = aws_subnet.public.id
}

output "private_subnet_id" {
  description = "ID of private subnet"
  value       = aws_subnet.private.id
}