variable "rest_api_id" {
  description = "ID of the REST API"
  type        = string
}

variable "resource_id" {
  description = "ID of the API resource"
  type        = string
}

variable "http_method" {
  description = "HTTP Method"
  type        = string
}

variable "response_payload" {
  description = "Stringified JSON response payload"
  type        = string
}
