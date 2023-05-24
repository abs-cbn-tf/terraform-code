variable "iam_user_name" {
  type        = string
  description = "Name of the IAM user"
}

variable "iam_policies" {
  type = list(object({
    name        = string
    description = string
    policy      = string
  }))
}

