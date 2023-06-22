#!/usr/bin/env bash

IMAGE_NAME="$1"

cd "${INPUT_SOURCE_DIR}" || exit
docker run -v "$(pwd)":/source -i -t -w /source --platform="linux/${INPUT_PLATFORM}" \
    "${IMAGE_NAME}" "${INPUT_DIST}" "${INPUT_SOURCEPACKAGE}" .
