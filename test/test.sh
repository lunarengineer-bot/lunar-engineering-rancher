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
lxc exec test-container -- bash -c "ls /home"
# 3. Run teardown