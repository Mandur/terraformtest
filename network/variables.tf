variable "vnet_resource_group_name" {
  type        = string
  description = "Name of the deployment"
}

variable "subnet_name" {
  type        = string
  description = "Name of the environment"
}  

variable "location" {
  type        = string
  description = "Name of the environment"
} 

#By default
variable "vnet_address_space" {
  type        = list(string)
  description = "Address space of the virtual network"
  default     = ["10.0.0.0/16"]
}

variable "training_subnet_address_space" {
  type        = list(string)
  description = "Address space of the training subnet"
  default     = ["10.0.1.0/24"]
}

variable "name" {
  type        = string
  description = "Name of the deployment"
}

variable "stage" {
  type        = string
  description = "Name of the deployment"
}
