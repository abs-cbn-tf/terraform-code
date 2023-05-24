variable "kms_keys" {
  type = list(object({
    name            = string
    description     = string
    deletion_window = number
  }))
}

