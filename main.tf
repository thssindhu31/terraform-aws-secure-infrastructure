terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source       = "./modules/vpc"
  vpc_cidr     = var.vpc_cidr
  project_name = var.project_name
}

module "subnet" {
  source              = "./modules/subnet"
  vpc_id              = module.vpc.vpc_id
  project_name        = var.project_name
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
  igw_id              = module.vpc.igw_id
}

module "security_group" {
  source       = "./modules/security-group"
  vpc_id       = module.vpc.vpc_id
  project_name = var.project_name
}

module "ec2" {
  source            = "./modules/ec2"
  project_name      = var.project_name
  public_subnet_id  = module.subnet.public_subnet_id
  private_subnet_id = module.subnet.private_subnet_id
  bastion_sg_id     = module.security_group.bastion_sg_id
  private_sg_id     = module.security_group.private_sg_id
  instance_type     = var.instance_type
  ami_id            = var.ami_id
  key_name          = var.key_name
}