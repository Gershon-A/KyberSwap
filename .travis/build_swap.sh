#!/bin/bash

set -euo pipefail

printf 'Building swap from commit %s' "$TRAVIS_COMMIT"
if [[ "$TRAVIS_BRANCH" == "develop" ]]; then
  npm run build_auto_dev
  npm run build_auto_ropsten
else
    echo "Branch is not set for auto-build."
    exit 0
fi
