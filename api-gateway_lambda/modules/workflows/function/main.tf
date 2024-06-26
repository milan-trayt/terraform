module "lambda" {
  source        = "../../services/lambda"
  function_name = var.function_name
}

module "api_gateway" {
  source              = "../../services/api-gateway"
  aws_apigateway_name = var.aws_apigateway_name
  lambda_invoke_arn   = module.lambda.lambda_invoke_arn
  function_name       = module.lambda.function_name
}