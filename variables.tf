variable "projectid" {
  type = string

}

variable "networkname" {
  type = string

}

variable "autocreate" {
  type = bool

}

variable "routing" {
  type = string

}

variable "mtu" {
  type = number

}

variable "subnetname" {
  type = list(string)

}

variable "range" {
  type = list(string)

}

variable "region" {
  type = string
}