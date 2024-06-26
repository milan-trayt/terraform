variable "aws_apigateway_name" {
  type        = string
  description = "The name of the API Gateway"
}

variable "lambda_invoke_arn" {
  type        = string
  description = "The invoke ARN of the Lambda function"
}

variable "function_name" {
  type        = string
  description = "The Lambda function name"
}