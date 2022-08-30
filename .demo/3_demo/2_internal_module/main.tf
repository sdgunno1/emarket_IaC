module "vpc" {
  source          = "./vpc_module"
}


module "rds" {
  source          = "./rds_module"
  
  mariadb_instance_class   = var.mariadb_instance_class
  mariadb_master_user_name = var.mariadb_master_user_name

  vpc_id     = module.vpc.vpc_id
  subnet_id1 = module.vpc.private_subnet_id[0]
  subnet_id2 = module.vpc.private_subnet_id[1]
}

