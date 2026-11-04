module "subnets" {
  source = "../.."

  subnets = {
    private = {
      compartment_id     = var.compartment_id
      vcn_id             = var.vcn_id
      cidr_block         = "10.0.1.0/24"
      dns_label          = "private"
      nat_route_table_id = var.route_table_id
    }
    public = {
      compartment_id             = var.compartment_id
      vcn_id                     = var.vcn_id
      cidr_block                 = "10.0.2.0/24"
      dns_label                  = "public"
      prohibit_internet_ingress  = false
      prohibit_public_ip_on_vnic = false
    }
  }
}

output "subnet_ids" {
  value = { for k, s in module.subnets.subnets : k => s.id }
}
