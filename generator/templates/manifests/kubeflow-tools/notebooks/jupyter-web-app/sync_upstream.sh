#!/usr/bin/env bash

set -euo pipefail

THIS_SCRIPT_PATH=$(cd "$(dirname "$0")" && pwd)
cd "$THIS_SCRIPT_PATH"

# upstream configs
UPSTREAM_REPO="github.com/kubeflow/manifests"
UPSTREAM_PATH="apps/jupyter/jupyter-web-app/upstream/overlays/istio"
UPSTREAM_REF="bb6b4b0c4763dfcace78a7c095ddf2c055b4c510" # v1.8.0

# output configs
OUTPUT_PATH="./upstream"

# clean the generator output directory
rm -rf "$OUTPUT_PATH"

# localize the upstream resources with kustomize
# - https://kubectl.docs.kubernetes.io/references/kustomize/cmd/localize/
kustomize localize "${UPSTREAM_REPO}/${UPSTREAM_PATH}?ref=${UPSTREAM_REF}" "$OUTPUT_PATH"
