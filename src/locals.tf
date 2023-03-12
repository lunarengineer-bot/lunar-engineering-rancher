
locals {
  # username that terraform will use to ssh to the node(s)
  user = "lunarengineer-bot"

  # the filename of the private key used to ssh to the node(s)
  private_key = "terraformuser"

  # the list of nodes that will be bootstrapped
  nodes = {
    node1 = {
      hostname = "rancher-pi-01"
      ip_addr  = "192.168.50.5"
      role     = ["controlplane", "worker", "etcd"]
    },
  }

}