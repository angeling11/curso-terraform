provider "aws" {
  region = "us-east-2"
}

module "app-platzi" {
  source        = "./modules/instance"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  tags          = var.tags
  sg_name       = var.sg_name
  ingress_rules = var.ingress_rules
  egress_rules  = var.egress_rules
  num           = var.num
  private_key   = var.private_key
}