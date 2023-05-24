module "kms" {
  source = "./modules/kms"

  kms_keys = var.kms_keys
}


module "kms2" {
  source = "./modules/kms"

  kms_keys = var.kms_keys
}
