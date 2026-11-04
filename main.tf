resource "oci_core_subnet" "this" {
  for_each = var.subnets

  compartment_id             = each.value.compartment_id
  vcn_id                     = each.value.vcn_id
  display_name               = each.key
  dns_label                  = each.value.dns_label
  cidr_block                 = each.value.cidr_block
  availability_domain        = each.value.availability_domain
  dhcp_options_id            = each.value.dhcp_options_id
  ipv6cidr_block             = each.value.ipv6cidr_block
  ipv6cidr_blocks            = each.value.ipv6cidr_blocks
  prohibit_internet_ingress  = each.value.prohibit_internet_ingress
  route_table_id             = each.value.nat_route_table_id
  prohibit_public_ip_on_vnic = each.value.prohibit_public_ip_on_vnic
  security_list_ids          = each.value.security_list_ids
  defined_tags               = each.value.defined_tags
  freeform_tags              = each.value.freeform_tags
}
