# api_gateway.tf

resource "aws_api_gateway_rest_api" "orientanet_api" {
  name        = var.api_gateway_name
  description = "API Gateway for Orientanet system"
}
