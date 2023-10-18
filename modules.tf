module "userpools" {
    source       = "./modules/pools"
    # cluster_name = var.cluster_name
    # aws_region   = var.aws_region
}

module "client" {
    source            = "./modules/client"
    aws_cognito_user_pool_id = module.userpools.user_pool_id
}