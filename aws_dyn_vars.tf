variable "aws_access_key" {
  default = ""
}

variable "aws_secret_key" {
  default = ""
}

variable "dyn_customer_name" {
  default = ""
}

variable "dyn_username" {
  default = ""
}

variable "dyn_password" {
  default = ""
}

variable "dyn_nsrecords" {
  default = {
    "0" = "ns1.p05.dynect.net."
    "1" = "ns2.p05.dynect.net."
    "2" = "ns-442.awsdns-55.com."
    "3" = "ns-534.awsdns-02.net."
  }
}