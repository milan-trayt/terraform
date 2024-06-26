terraform {
  backend "s3" {
    bucket         = "website-tfstate-bucket"
    key            = "terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "website-tfstate-lock"
  }
}