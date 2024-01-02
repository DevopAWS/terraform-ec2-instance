variable "sg-name" {
  type    =  string
  default =  "robosho-all-aws"
}

variable "sg-description" {
  type    =  string
  default =  "Allow TLS inbound traffic"
}

variable "sg-inbound-from_port" {
  type    =  number
  default =  0
}

variable "sg-cidr_blocks" {
  type    =  list
  default =  ["0.0.0.0/0"]
}
