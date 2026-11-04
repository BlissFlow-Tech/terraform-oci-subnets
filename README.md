# terraform-oci-subnets

Terraform module that creates OCI VCN subnets from a single map, regional or AD-specific, private by default.

## Usage

```hcl
module "subnets" {
  source  = "blissflow-tech/subnets/oci"
  version = "~> 1.1"

  subnets = {
    private = {
      compartment_id     = "ocid1.compartment.oc1..example"
      vcn_id             = "ocid1.vcn.oc1..example"
      cidr_block         = "10.0.1.0/24"
      dns_label          = "private"
      nat_route_table_id = "ocid1.routetable.oc1..example"
    }
  }
}
```

## Notes

* Each map key becomes the subnet display name.
* Subnets are private by default: `prohibit_internet_ingress` and `prohibit_public_ip_on_vnic` default to `true`.
* `availability_domain` left null creates a regional subnet.
* `nat_route_table_id` is attached as the subnet's route table, whatever gateway it routes to.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| terraform | >= 1.3 |
| oci | >= 8.0, < 10.0 |

## Providers

| Name | Version |
| ---- | ------- |
| oci | >= 8.0, < 10.0 |

## Resources

| Name | Type |
| ---- | ---- |
| [oci_core_subnet.this](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| subnets | Subnets to create, keyed by display name. Leave availability\_domain null for a regional subnet; nat\_route\_table\_id is attached as the subnet route table. | <pre>map(object({<br/>    compartment_id             = string<br/>    vcn_id                     = string<br/>    cidr_block                 = string<br/>    dns_label                  = optional(string)<br/>    availability_domain        = optional(string)<br/>    dhcp_options_id            = optional(string)<br/>    ipv6cidr_block             = optional(string)<br/>    ipv6cidr_blocks            = optional(list(string))<br/>    prohibit_internet_ingress  = optional(bool, true)<br/>    nat_route_table_id         = optional(string)<br/>    prohibit_public_ip_on_vnic = optional(bool, true)<br/>    security_list_ids          = optional(list(string))<br/>    defined_tags               = optional(map(string), {})<br/>    freeform_tags              = optional(map(string), {})<br/>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| subnets | Created subnets keyed like the subnets input |
<!-- END_TF_DOCS -->

## License

Apache 2.0. See [LICENSE](LICENSE).
