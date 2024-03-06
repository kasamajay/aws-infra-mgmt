terraform {
  required_version = ">= 1.6"  # Specifies the minimum Terraform version required
  backend "s3" {
    # Configuration for Terraform backend (e.g., for storing state)
    bucket         = "aws-infra-state"
    key            = "terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-lock"
  }
  # Additional configuration settings can be added here
}
