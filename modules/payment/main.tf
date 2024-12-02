resource "aws_dynamodb_table" "payment_table" {
  name           = "payment_table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "orderId"
  
  stream_enabled = false

  attribute {
    name = "orderId"
    type = "S"
  }

  tags = {
    Environment = "PRODUCTION"
    Project     = "sst-ms-payment"
  }
}