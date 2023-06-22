#!/bin/bash

DIST=$1
DSC=$2
SOURCE_DIR=$WORK_DIR/${3:-}
RESULT_DIR=$WORK_DIR/${4:-artifacts}
DEBFULLNAME=${5:-SIL GHA Packager}
DEBEMAIL=${6:-undelivered@sil.org}
PRERELEASE_TAG=${7:-}

echo "Hello world! DIST=${DIST}, DISTRIBUTION=${DISTRIBUTION}, PLATFORM=${PLATFORM}, ENABLE_LLSO=${ENABLE_LLSO}, ENABLE_PSO=${ENABLE_PSO}"
echo "INPUT_DIST=${INPUT_DIST}, INPUT_DISTRIBUTION=${INPUT_DISTRIBUTION}, INPUT_PLATFORM=${INPUT_PLATFORM}, INPUT_ENABLE_LLSO=${INPUT_ENABLE_LLSO}, INPUT_ENABLE_PSO=${INPUT_NABLE_PSO}"
echo "INPUT_DEB_FULLNAME=${INPUT_DEB_FULLNAME}, INPUT_DEB_EMAIL=${INPUT_DEB_EMAIL}, INPUT_PRERELEASE_TAG=${INPUT_PRERELEASE_TAG}"
lsb_release -a
