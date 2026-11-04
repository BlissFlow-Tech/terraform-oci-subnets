variable "compartment_id" {
  description = "OCID of the compartment that holds the subnets"
  type        = string
}

variable "vcn_id" {
  description = "OCID of the VCN the subnets belong to"
  type        = string
}

variable "route_table_id" {
  description = "OCID of the route table for the private subnet, typically routing through a NAT gateway"
  type        = string
}
