terraform {
  backend "s3" {
    bucket         = "lambda-tfstate-bucket"
    key            = "terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "lambda-tfstate-lock"
  }
}