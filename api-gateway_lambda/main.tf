module "function" {
  source              = "./modules/workflows/function"
  function_name       = var.function_name
  aws_apigateway_name = var.api_gateway_name
}