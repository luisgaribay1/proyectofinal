# lambda.tf

resource "null_resource" "lambda_function" {
  provisioner "local-exec" {
    command = "echo 'Lambda function not yet created'"
  }
}