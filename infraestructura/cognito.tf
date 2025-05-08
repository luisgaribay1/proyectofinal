# cognito.tf

resource "aws_cognito_user_pool" "user_pool" {
  name = var.cognito_pool_name

  password_policy {
    minimum_length    = 8
    require_uppercase = true
    require_lowercase = true
    require_numbers   = true
    require_symbols   = false
  }

  auto_verified_attributes = ["email"]
  alias_attributes         = ["email"]
}
