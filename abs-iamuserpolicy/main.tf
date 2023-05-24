#module "iam" {
#  source         = "./modules/iam"
#  iam_policies   = var.iam_policies
#  iam_user_name = var.iam_user_name
#}

module "iam_user" {
  source            = "./modules/iam_user"
  iam_user_name     = var.iam_user_name
  iam_policies      = var.iam_policies
}

