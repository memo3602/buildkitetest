#!/usr/bin/env bash

set -eu

echo "
env:
  ENABLE_PUSH_ANNOTATIONS: $ENABLE_PUSH_ANNOTATIONS
steps:
  - label: Setting ENABLE_PUSH_ANNOTATIONS environment variable
    command: echo ENABLE_PUSH_ANNOTATIONS variable has been set to $ENABLE_PUSH_ANNOTATIONS

  - label: checking env var
    command: |
      if [ \"$ENABLE_PUSH_ANNOTATIONS\" == \"true\" ]; then
        echo \"Variable is true\"
      else
        echo \"Variable is $ENABLE_PUSH_ANNOTATIONS\"
      fi
"
