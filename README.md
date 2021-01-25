# RabbitMQ Secrets Engine with tags example

## Overview

This module enables and configures the RabbitMQ secrets engine.

## Example use case

In cases where engineers require Just-In-Time management access to RabbitMQ to administer the platform, configuring the RabbitMQ secrets engine with this example will allow authenticated and authorised Vault users to obtain temporary RabbitMQ credentials. Also for cases where applications require read-only access to resources in a specific virtual host.

## RabbitMQ Requirements

Vault will require a RabbitMQ user with the Administrator management plugin tag.  No other permissions are required.

For more information about RabbitMQ Access and Permissions, refer to the [rabbitmqctl documentation.](https://www.rabbitmq.com/management.html#permissions)

## Usage

```hcl
provider "vault" {
  address = "http://localhost:8200"
  token   = var.vault_token
}

variable "vault_token" {}
variable "rabbitmq_username" {}
variable "rabbitmq_password" {}

module "rabbitmq_defaults" {
  source = "../../"

  rabbitmq_uri      = "http://localhost:15672"
  rabbitmq_username = var.rabbitmq_username
  rabbitmq_password = var.rabbitmq_password

  rabbitmq_backend_role_name = "test"
  rabbitmq_tags              = "administrator"

}
```

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.