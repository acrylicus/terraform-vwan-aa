variable "resource_suffix" {
  type    = string
  default = "-vwan-aa"
}

variable "region" {
  type    = string
  default = "westeurope"
}

variable "region_2" {
  type    = string
  default = "northeurope"
}

variable "region_3" {
  type    = string
  default = "uksouth"
}

variable "resource_group" {
  type    = string
}

variable "susbcription_id" {}

variable "username" {}

variable "password" {}

variable "fmgr_ip" {}

variable "fmgr_serial" {}