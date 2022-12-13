variable "resource_group_name" {
  type        = string
  description = "Name of the deployment"
}

variable "tenant_id" {
  type        = string
  description = "Name of the deployment"
}

variable "location" {
  type        = string
  description = "Name of the environment"
} 

variable "name" {
  type        = string
  description = "Name of the deployment"
}

variable "stage" {
  type        = string
  description = "Name of the deployment"
}

variable "users" {
  type = list
  default = [ "guid1", "guid2"]
  
}

