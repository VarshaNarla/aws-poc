%dw 2.0
output application/json
---
{
  s3Key: read(p("aws.secrets.firstSecret"), "application/json").firstSecretKey,
  message: "Using secret from AWS"
}