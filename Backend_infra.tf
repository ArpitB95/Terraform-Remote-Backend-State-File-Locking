 #Backend variables
 variable "state_bucket_name" {
   default = "state-app-bucket"
  
 }

variable "region" {
  default = "eu-west-2"
  
 }
 variable "state_table_name" {
   default = "my_dynamo_db"
  
 }

#Backend resources
resource "aws_dynamodb_table" "my_state_table" {
    name = var.state_table_name
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
      name = "LockID"
      type = "S"
    }

    tags = {
    Name = var.state_table_name
    
  }
}


resource "aws_s3_bucket" "backend-state-bucket" {
    bucket = var.state_bucket_name

    tags = {
      Name = var.state_bucket_name
  }

} 


