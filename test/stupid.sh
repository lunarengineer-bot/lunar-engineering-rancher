lxc launch ubuntu-daily:bionic test-container \
    --config=cloud-init.network-config=$(cat files/network-config) \
    --config=cloud-init.user-data="$(cat files/artifacts/lunarengineer-bot-user-data)"