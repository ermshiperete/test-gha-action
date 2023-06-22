#!/usr/bin/env bash

echo "::notice::***** in entrypoint.sh: $*"
env
cd "${INPUT_SOURCE_DIR}" || exit
docker run -v "$(pwd)":/source --workdir /source --platform="linux/${INPUT_PLATFORM}" \
    "${INPUT_IMAGE}" "${INPUT_DIST}" "${INPUT_SOURCEPACKAGE}" .
