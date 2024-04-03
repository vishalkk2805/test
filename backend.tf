terraform {

  backend "s3" {

    bucket         = "terraform-bucket-8303"

    key            = "Dirft/terraform.tfstate"

    region         = "us-east-2"

    dynamodb_table = "terraform-dynamodb"

    encrypt        = true

  }

}
