module "vpc" {
  source = "./modules/vpc"
}

module "security_group" {
  source = "./modules/security-group"
}

module "ec2" {
  source = "./modules/ec2"

  ami_id        = var.ami_id
  instance_type = var.instance_type
}
