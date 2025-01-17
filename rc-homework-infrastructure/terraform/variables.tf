variable "name" {
  description = "Helm release name."
  type        = string
}

variable "chart_version" {
  description = "Version of the Helm chart"
  type        = string
}

variable "chart_name" {
  description = "service"
  type        = string
}

variable "namespace" {
  description = "Helm release reference of namespace"
  type = string
} 
