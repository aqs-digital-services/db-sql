variable "resource_group_name" {
  type    = string
  default = "grupo-congregacao"
}

variable "location" {
  type    = string
  default = "brazilsouth"
}

variable "db_server_name" {
  type    = string
  default = "db-congregacao"
}

variable "subscription_id" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "db_admin" {
  type    = string
  default = "adminuser"
}

variable "db_password" {
  type      = string
  sensitive = true
}
