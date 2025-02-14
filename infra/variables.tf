variable "resource_group_name" {
  type    = string
}

variable "location" {
  type    = string
  default = "brazilsouth"
}

variable "db_server_name" {
  type    = string
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
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}
