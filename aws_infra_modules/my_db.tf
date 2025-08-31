resource "aws_dynamodb_table" "db_table" {
  name             = "${var.my-env}-demo-dynamodb-table"
  hash_key         = "id"
  billing_mode     = "PAY_PER_REQUEST"
  attribute {
    name = "id"
    type = "S"
  }
} 
