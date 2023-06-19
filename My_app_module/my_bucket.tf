resource "aws_s3_bucket" "arpit_app_bucket" {
    bucket = "${var.my_env}-app-bucket-11"

    tags = {
      Name = "${var.my_env}-app-bucket-11"
  }

} 