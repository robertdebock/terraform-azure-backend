# Remote state on Azure

This repository contains an example on how to store state on Azure.

## Setup

First create the storage container. This can be done manually, or using the Terraform code in the `storage_container` directory.

```shell
cd storage_container
terraform init
terraform apply
```

The `storage_container/output.tf` will display the (half random) details. These value should be pasted into `terraform.tf`.

NOTE: The state for the storage container creation is local. In other words; you'll see `bucket/terraform.tfstate`. Only the code in `./` uses remote state.

Now you can uncomment all lines in `terraform.tf` and apply again. (You may need to `terraform init -migrate-state` to start the migration.)
