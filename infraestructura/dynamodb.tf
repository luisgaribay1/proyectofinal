# dynamodb.tf

resource "aws_dynamodb_table" "orientanet_table" {
  name           = var.dynamodb_table_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"
  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name = "OrientanetTable"
  }
}
