variable "region" {
  description = "Provide location under which it should be managed"
  type        = string
  default     = "East US"
}

variable "rg_name" {
  type    = string
  default = "terraformdemo"
}

variable "vnet_cidr" {
  type    = list(string)
  default = ["10.110.0.0/16"]
}

variable "vnet_name" {
  description = "Provide name for the VNet creation"
  type        = string
  default     = "VNetDemo"
}

variable "subnet_cidrs" {
  description = "Provide CIDR ranges for VNet subnet creation"
  type        = map(list(string))
  default = {
    "private_subnets" = ["10.110.1.0/24"]
    "public_subnets"  = ["10.110.0.0/24"]
  }
}

variable "vnet_tags" {
  type = map(string)
  default = {
    "Name" = "VNetDemo"
  }
}