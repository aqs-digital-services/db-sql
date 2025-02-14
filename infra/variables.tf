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

variable "db_admin" {
  type    = string
  default = "adminuser"
}

variable "db_password" {
  type      = string
  sensitive = true
}
