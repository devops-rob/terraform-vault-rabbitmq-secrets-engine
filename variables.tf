variable "path" {
  type        = string
  default     = "rabbitmq"
  description = "(Required) The path that the secrets engine will be mounted to."
}

variable "rabbitmq_uri" {
  type        = string
  default     = "http://localhost:15672"
  description = "(Optional) Connection URI for RabbitMQ instance."
}

variable "rabbitmq_password" {
  type        = string
  default     = null
  description = "(Required) Password for RabbitMQ instance."
}

variable "rabbitmq_username" {
  type        = string
  default     = null
  description = "(Required) Username for RabbitMQ instance."
}

variable "rabbitmq_verify_connection" {
  type        = bool
  default     = false
  description = "(Optional) Specifies whether to verify connection URI, username, and password."
}

variable "rabbitmq_default_ttl" {
  type        = number
  default     = 3600
  description = "(Optional) Default TTL for RabbitMQ."
}

variable "rabbitmq_maximum_ttl" {
  type        = number
  default     = 3600
  description = "(Optional) Max TTL for RabbitMQ."
}

variable "rabbitmq_backend_role_name" {
  type        = string
  default     = null
  description = "(Required) Name of RabbitMQ backend role."
}

variable "rabbitmq_vhost" {
  type        = string
  default     = "/"
  description = "(Optional) RabbitMQ vhost that generated credentials will have access to."
}

variable "rabbitmq_read_permissions" {
  type        = string
  default     = ""
  description = "(Optional) List of resources to grant read permissions to."
}

variable "rabbitmq_write_permissions" {
  type        = string
  default     = ""
  description = "(Optional) List of resources to grant write permissions to."
}

variable "rabbitmq_configure_permissions" {
  type        = string
  default     = ""
  description = "(Optional) List of resources to grant configure permissions to."
}

variable "rabbitmq_tags" {
  type        = string
  default     = null
  description = "(Optional) Comma separated list of RabbitMQ tags to assign to generated user."
}
