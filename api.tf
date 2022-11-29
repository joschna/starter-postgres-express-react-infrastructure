resource "aws_api_gateway_rest_api" "api" {
  name = "${local.prefix}api"
}


# Resources for /auth/login
resource "aws_api_gateway_resource" "auth" {
  parent_id   = aws_api_gateway_rest_api.api.root_resource_id
  path_part   = "auth"
  rest_api_id = aws_api_gateway_rest_api.api.id
}

resource "aws_api_gateway_resource" "auth_login" {
  parent_id   = aws_api_gateway_resource.auth.id
  path_part   = "login"
  rest_api_id = aws_api_gateway_rest_api.api.id
}

module "api_auth_login" {
  source           = "./modules/mock-api-integration"
  rest_api_id      = aws_api_gateway_rest_api.api.id
  resource_id      = aws_api_gateway_resource.auth_login.id
  http_method      = "POST"
  response_payload = local.api_auth_response
}


# Resources for /api/posts
resource "aws_api_gateway_resource" "api" {
  parent_id   = aws_api_gateway_rest_api.api.root_resource_id
  path_part   = "api"
  rest_api_id = aws_api_gateway_rest_api.api.id
}

resource "aws_api_gateway_resource" "api_posts" {
  parent_id   = aws_api_gateway_resource.api.id
  path_part   = "posts"
  rest_api_id = aws_api_gateway_rest_api.api.id
}

module "api_api_posts" {
  source           = "./modules/mock-api-integration"
  rest_api_id      = aws_api_gateway_rest_api.api.id
  resource_id      = aws_api_gateway_resource.api_posts.id
  http_method      = "GET"
  response_payload = local.api_posts_response
}


# API stage and deployment
resource "aws_api_gateway_stage" "default" {
  deployment_id = aws_api_gateway_deployment.default.id
  rest_api_id   = aws_api_gateway_rest_api.api.id
  stage_name    = "default"
}

resource "aws_api_gateway_deployment" "default" {
  rest_api_id = aws_api_gateway_rest_api.api.id

  triggers = {
    redeployment = sha1(jsonencode([
      # /auth/login
      module.api_auth_login.redeployment_trigger_content,
      # /api/posts
      module.api_api_posts.redeployment_trigger_content
    ]))
  }

  lifecycle {
    create_before_destroy = true
  }
}
