#!/usr/bin/env bash

set -euo pipefail

kubeflow-tools/katib/sync_upstream.sh
kubeflow-tools/notebooks/jupyter-web-app/sync_upstream.sh
kubeflow-tools/notebooks/notebook-controller/sync_upstream.sh
kubeflow-tools/pipelines/sync_upstream.sh
kubeflow-tools/poddefaults-webhook/sync_upstream.sh
kubeflow-tools/tensorboards/tensorboard-controller/sync_upstream.sh
kubeflow-tools/tensorboards/tensorboards-web-app/sync_upstream.sh
kubeflow-tools/training-operator/sync_upstream.sh
kubeflow-tools/volumes/volumes-web-app/sync_upstream.sh
