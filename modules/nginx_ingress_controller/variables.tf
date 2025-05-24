variable "release_name" {
  type        = string
  description = "Helm release name"
}

variable "namespace" {
  type        = string
  description = "Kubernetes namespace to deploy into"
}

variable "create_namespace" {
  type        = bool
  description = "Whether to create the namespace if it does not exist"
}

variable "chart_repo" {
  type        = string
  description = "URL of the Helm chart repository"
}

variable "chart_name" {
  type        = string
  description = "Name of the chart"
}

variable "chart_version" {
  type        = string
  description = "Version of the chart to install"
}

variable "values" {
  type        = list(string)
  description = "List of YAML value-documents to pass to the chart"
}
