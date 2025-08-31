resource "aws_s3_bucket" "demo-bucket" {
  bucket = "${var.my-env}-my-testdummy-bucket"

  tags = {
    Name        = "${var.my-env}-my-testdummy-bucket"
    Environment = var.my-env
  }
}