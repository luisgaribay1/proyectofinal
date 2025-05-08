# variables.tf

variable "aws_region" {
  description = "La región de AWS donde se desplegarán los recursos"
  type        = string
  default     = "us-east-2"
}

variable "s3_bucket_name" {
  description = "El nombre del bucket de S3"
  type        = string
  default     = "web-source-bucket"
}

variable "cognito_pool_name" {
  description = "Nombre del pool de usuarios de Cognito"
  type        = string
  default     = "leocorp"
}

variable "api_gateway_name" {
  description = "Nombre de la API Gateway"
  type        = string
  default     = "api-gateway-orientanet"
}

variable "dynamodb_table_name" {
  description = "Nombre de la tabla DynamoDB"
  type        = string
  default     = "orientanet-table"
}
