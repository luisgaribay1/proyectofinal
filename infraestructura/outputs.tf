# outputs.tf

output "s3_bucket_name" {
  description = "Nombre del bucket S3"
  value       = aws_s3_bucket.web_bucket.bucket
}

output "cloudfront_domain" {
  description = "Dominio de CloudFront"
  value       = aws_cloudfront_distribution.cdn.domain_name
}

output "cognito_user_pool_id" {
  description = "ID del pool de usuarios de Cognito"
  value       = aws_cognito_user_pool.user_pool.id
}

output "dynamodb_table_name" {
  description = "Nombre de la tabla DynamoDB"
  value       = aws_dynamodb_table.orientanet_table.name
}