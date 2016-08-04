#!/bin/bash

REPO=${REPO:-"rancher"}
TAG=${TAG:-"dev"}
IMAGE=${IMAGE:-"rancher-k8s-cni-adapter"}

echo "Pushing image [${IMAGE}] using repo [${REPO}] and tag [${TAG}]"

docker push ${REPO}/${IMAGE}:${TAG}

echo "Done pushing to docker hub"
