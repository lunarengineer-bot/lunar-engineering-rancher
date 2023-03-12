# lunar-engineering-rancher

Deploys rancher via Terraform

This was created with Terraform 1.3.8

This uses the Rancher provider to deploy Rancher onto a kubernetes cluster.

Rancher managers harvester and *allows gitops to manage infrastructure*. Hot stuff right there.

Future

This image allows plugging a usb into a computer and booting from firmware basically anywhere.

Example of ipxe boot: https://github.com/harvester/ipxe-examples/tree/main/general

This could be hosted in a private git project (like the luna household server!) and bob's your uncle.

Note this says nodes must have at least 8gb of ram.
https://docs.harvesterhci.io/v1.1/install/pxe-boot-install is the way to go!
https://docs.harvesterhci.io/v1.1/