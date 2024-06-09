module "dev_network" {
  source = "/terraform/module/aws/network/"
  vpc_cidr_block = var.dev_vpc_cidr_block
  subnet_cidr_block = var.dev_subnet_cidr_block
  az = var.dev_az
}

module "dev_coumpute" {
  source = "/terraform/module/aws/compute/"
  vpc_id = module.dev_network.vpc_id  ## output ID
  sg_ingress_port = var.dev_sg_ingress_port 
  subnet_id = module.dev_network.subnet_id
  sg_ingress_cidr_block = var.dev_sg_ingress_cidr_block
  ami = var.dev_ami
  ec2_type = var.dev_ec2_type
}

