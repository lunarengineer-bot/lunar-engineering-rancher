#!/bin/bash
#############################
# The Stupid Testing Script #
#############################
# Deploying a VM and running the bootstrapping procedure on it
#   when using cloud-init, has requirements which I wasn't able
#   to get working in a container, so must be done via VM.
# This 'tests' the cloud-init setup during the setup.sh.
# Basically, if the testing script can run, the setup worked.
# This runs required tests.
# 1. Run setup
source files/setup.sh
# 2. Run tests
lxc list test-container # Get IP
lxc exec test-container -- bash -c "cat /var/log/cloud-init.log"
lxc exec test-container -- bash -c "cat /root/.ssh/authorized_keys"

scp -i files/artifacts/lunarengineer-bot-key lunarengineerbot@10.47.185.234:/etc/rancher/k3s/k3s.yaml ~/.kube/config
# 3. Run teardown