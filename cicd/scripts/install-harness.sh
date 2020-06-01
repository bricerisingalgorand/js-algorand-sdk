#!/usr/bin/env bash

set -e

# cleanup last test run
rm -rf test-harness
rm -rf tests/cucumber/features

BRANCH=${ALGORAND_SDK_TESTING_BRANCH-'develop'}
GITHUB_ORG=${ALGORAND_SDK_TESTING_ORG-'algorand'}

git clone --single-branch --branch ${BRANCH} "https://github.com/${GITHUB_ORG}/algorand-sdk-testing.git" test-harness

## Copy feature files into the project resources
mkdir -p tests/cucumber/
mv test-harness/features tests/cucumber/features
