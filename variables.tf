variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "product_name" {
  description = "Product name to be applied to resources"
  type        = string
}

variable "tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
}

variable "address_space" {
  description = "CIDRs for virtual network"
  type        = list(string)
}

variable "address_prefixes_private" {
  description = "CIDRs for private subnet"
  type        = list(string)
}

variable "address_prefixes_public" {
  description = "CIDRs for public subnet"
  type        = list(string)
}

