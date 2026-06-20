variable "name_prefix" {
  description = "Prefix used for naming network resources."
  type        = string
}

variable "location" {
  description = "Azure region for network resources."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "address_space" {
  description = "Address space for the virtual network."
  type        = list(string)
}

variable "public_subnet_prefix" {
  description = "CIDR block for the public subnet."
  type        = list(string)
}

variable "private_subnet_prefix" {
  description = "CIDR block for the private subnet."
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to resources."
  type        = map(string)
}
