terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }

  
  }

#   backend "s3" {
#     bucket = "state-app-bucket"
#     key = "terraform.tfstate"
#     region = "eu-west-2"
#     dynamodb_table = "my_dynamo_db"
# }


}


