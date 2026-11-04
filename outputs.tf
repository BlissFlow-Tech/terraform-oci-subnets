output "subnets" {
  description = "Created subnets keyed like the subnets input"
  value = {
    for k, v in oci_core_subnet.this : k => {
      id                         = v.id
      vcn_id                     = v.vcn_id
      virtual_router_ip          = v.virtual_router_ip
      virtual_router_mac         = v.virtual_router_mac
      availability_domain        = v.availability_domain
      cidr_block                 = v.cidr_block
      compartment_id             = v.compartment_id
      dhcp_options_id            = v.dhcp_options_id
      display_name               = v.display_name
      dns_label                  = v.dns_label
      ipv4cidr_blocks            = v.ipv4cidr_blocks
      ipv6cidr_block             = v.ipv6cidr_block
      ipv6cidr_blocks            = v.ipv6cidr_blocks
      ipv6virtual_router_ip      = v.ipv6virtual_router_ip
      prohibit_internet_ingress  = v.prohibit_internet_ingress
      prohibit_public_ip_on_vnic = v.prohibit_public_ip_on_vnic
      route_table_id             = v.route_table_id
      security_list_ids          = v.security_list_ids
      state                      = v.state
      subnet_domain_name         = v.subnet_domain_name
      time_created               = v.time_created
      defined_tags               = v.defined_tags
      freeform_tags              = v.freeform_tags
    }
  }
}
