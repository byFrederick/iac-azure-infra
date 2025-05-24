variable "acr_attachments" {
  type = map(object({
    principal_id = string
    scope        = string
  }))
  description = "Role assigments of registry pull permission from AKS cluster"
}