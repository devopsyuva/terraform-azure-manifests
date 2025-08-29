variable "region" {
  description = "Provide location under which it should be managed"
  type        = string
  default     = "East US"
}

variable "rg_name" {
  type    = string
  default = "terraformdemo"
}

variable "cidr" {
  type    = list(string)
  default = ["10.110.0.0/16"]
}

variable "vnet_name" {
  description = "Provide name for the VNet creation"
  type        = string
  default     = "VNetDemo"
}

variable "vnet_tags" {
  type = map(string)
  default = {
    "Name"        = "VNetDemo"
  }
}