#!/usr/bin/env bash

IMAGE=rabbitmq:3-management
NAMESPACE="$TEAM-dev"

sed "s#{{image}}#$IMAGE#g; s#{{service}}#$SERVICE#g; s#{{namespace}}#$NAMESPACE#g; s#{{team}}#$TEAM#g" kube.yaml

sed "s#{{image}}#$IMAGE#g; s#{{service}}#$SERVICE#g; s#{{namespace}}#$NAMESPACE#g; s#{{team}}#$TEAM#g" kube.yaml | sudo kubectl --kubeconfig /tmp/kube-config apply -f -
