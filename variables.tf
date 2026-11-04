variable "subnets" {
  description = "Subnets to create, keyed by display name. Leave availability_domain null for a regional subnet; nat_route_table_id is attached as the subnet route table."
  type = map(object({
    compartment_id             = string
    vcn_id                     = string
    cidr_block                 = string
    dns_label                  = optional(string)
    availability_domain        = optional(string)
    dhcp_options_id            = optional(string)
    ipv6cidr_block             = optional(string)
    ipv6cidr_blocks            = optional(list(string))
    prohibit_internet_ingress  = optional(bool, true)
    nat_route_table_id         = optional(string)
    prohibit_public_ip_on_vnic = optional(bool, true)
    security_list_ids          = optional(list(string))
    defined_tags               = optional(map(string), {})
    freeform_tags              = optional(map(string), {})
  }))
}
