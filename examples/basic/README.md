# Basic example

Creates a private regional subnet routed through an existing route table and a public regional subnet in an existing VCN.

```sh
terraform init
terraform apply -var compartment_id=<compartment-ocid> -var vcn_id=<vcn-ocid> -var route_table_id=<route-table-ocid>
```
