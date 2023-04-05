#!/bin/bash
scp -i files/artifacts/lunarengineer-bot-key lunarengineerbot@10.47.185.234:/etc/rancher/k3s/k3s.yaml ~/.kube/config
# 3. Run teardown