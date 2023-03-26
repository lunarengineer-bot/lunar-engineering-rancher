#!/bin/bash
# Install terraform
sudo snap install terraform --classic
# Create a testing artifact folder.
mkdir -p files/artifacts
# Create an .ssh key for the testing routine.
ssh-keygen -t ed25519 \
    -a 100 \
    -f files/artifacts/lunarengineer-bot-key \
    -N "" \
    -C lunarengineerbot
# Pipe this SSH Key into a user-data script.
USER_KEY="$(cat files/artifacts/lunarengineer-bot-key.pub)"
# Create a user data file from the template, with the key in it.
sed "s/<USER_KEY>/\"$USER_KEY\"/g" files/user-data-template > files/artifacts/lunarengineer-bot-user-data

# Create a testing network.
lxc network create testing_net --type=bridge
# Use a flavor of Ubuntu to create a VM using this network configuration and user configuration
lxc launch ubuntu-daily:bionic test-container \
    #--config=cloud-init.network-config="$(cat files/network-config)" \
    --config=cloud-init.user-data='$(cat files/artifacts/lunarengineer-bot-user-data)'
# Attach that container to this testing network to ensure a unique IP.
lxc network attach testing_net test-container eth0