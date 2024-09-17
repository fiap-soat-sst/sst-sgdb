variable "identifier" {
  default = "sst-db"
  type    = string
}

variable "allocated_storage" {
  default = 5
  type    = number
}

variable "max_allocated_storage" {
  default = 10
  type    = number
}

variable "db_name" {
  default = "self_service_totem"
  type    = string
}

variable "engine" {
  default = "mysql"
  type    = string
}

variable "engine_version" {
  default = "8.0"
  type    = string
}

variable "instance_class" {
  default = "db.t3.micro"
  type    = string
}

variable "username" {
  default = "admin"
  type    = string
}

variable "password" {
  default = "none"
  type    = string
}