terraform {

backend "s3" {
    bucket         = "eldoret-bucket"
    key            = "week10/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

