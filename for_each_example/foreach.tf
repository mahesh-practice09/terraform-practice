variable "fruits_list" {
  type = list 
  default = ["apple","banana","orange","apple"]
}

variable "fruits_set" {
  type = set(string)
  default = ["apple","banana","orange","apple"]
}