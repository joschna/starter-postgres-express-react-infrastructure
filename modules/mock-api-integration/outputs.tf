output "redeployment_trigger_content" {
  value = sha1(jsonencode([
    # Specified HTTP method
    aws_api_gateway_method.default.id,
    aws_api_gateway_method_response.default.id,
    aws_api_gateway_integration.default.id,
    aws_api_gateway_integration_response.default.id,

    # OPTIONS
    aws_api_gateway_method.options.id,
    aws_api_gateway_method_response.options.id,
    aws_api_gateway_integration.options.id,
    aws_api_gateway_integration_response.options.id,
  ]))
}
