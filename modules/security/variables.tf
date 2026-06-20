variable "name_prefix" {
  description = "Prefix used for naming security resources."
  type        = string
}

variable "location" {
  description = "Azure region for security resources."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources."
  type        = map(string)
}
