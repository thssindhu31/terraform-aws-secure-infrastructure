output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "bastion_public_ip" {
  description = "Bastion Host Public IP"
  value       = module.ec2.bastion_public_ip
}

output "private_instance_ip" {
  description = "Private EC2 IP"
  value       = module.ec2.private_instance_ip
}

output "public_subnet_id" {
  description = "Public Subnet ID"
  value       = module.subnet.public_subnet_id
}

output "private_subnet_id" {
  description = "Private Subnet ID"
  value       = module.subnet.private_subnet_id
}