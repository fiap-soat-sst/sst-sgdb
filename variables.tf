variable "sst_identifier" {
  default = "sst-db"
  type    = string
}

variable "mking_identifier" {
  default = "sst-mking-db"
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

variable "sst_db_name" {
  default = "self_service_totem"
  type    = string
}

variable "mking_db_name" {
  default = "sst_ms_making"
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

variable "sst_username" {
  default = "mking_username"
  type    = string
}

variable "sst_db_password" {
  default = "none"
  type    = string
}

variable "mking_username" {
  default = "mking_manager"
  type    = string
}

variable "mking_db_password" {
  default = "none"
  type    = string
}