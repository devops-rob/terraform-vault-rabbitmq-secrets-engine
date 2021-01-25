resource "vault_rabbitmq_secret_backend" "rabbitmq" {
  path  = var.path

  connection_uri    = var.rabbitmq_uri
  password          = var.rabbitmq_password
  username          = var.rabbitmq_username
  verify_connection = var.rabbitmq_verify_connection

  default_lease_ttl_seconds = var.rabbitmq_default_ttl
  max_lease_ttl_seconds     = var.rabbitmq_maximum_ttl
}

resource "vault_rabbitmq_secret_backend_role" "rabbitmq" {
  backend = vault_rabbitmq_secret_backend.rabbitmq.path
  name    = var.rabbitmq_backend_role_name

  vhost {
    configure = var.rabbitmq_configure_permissions
    host      = var.rabbitmq_vhost
    read      = var.rabbitmq_read_permissions
    write     = var.rabbitmq_write_permissions
  }

  tags = var.rabbitmq_tags
}
