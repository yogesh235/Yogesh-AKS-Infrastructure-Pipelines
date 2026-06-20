variable "RG_Var" {
  type = map(object({
    name     = string
    location = string
  }))
}