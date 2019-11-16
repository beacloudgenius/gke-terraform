provider "aws" {

  # Select version of the AWS provider
  version = "~> 2.36"
}


terraform {
  backend "s3" {
    key            = "global/s3/terraform.tfstate"

    # Replace this with your region name
    region         = "us-west-2"

    # Replace this with your bucket name
    bucket         = "cgterraform"

    # Replace this with your DynamoDB table name
    dynamodb_table = "cgterraform"

    encrypt        = true
  }
}
