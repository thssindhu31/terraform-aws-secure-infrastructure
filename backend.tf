terraform {
  backend "s3" {
    bucket         = "terraform-state-thssindhu31-2026"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}