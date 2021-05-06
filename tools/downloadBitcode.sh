#!/bin/bash

set -euo pipefail

# Files to be downloaded
WEBRTC_BUILD="M84-1"
WEBRTC_FILE="https://github.com/barisinanc/react-native-webrtc/releases/download/1.84.0/WebRTC.tar.xz"


THIS_DIR=$(cd -P "$(dirname "$(readlink "${BASH_SOURCE[0]}" || echo "${BASH_SOURCE[0]}")")" && pwd)

pushd ${THIS_DIR}/../ios

# Cleanup
rm -rf WebRTC.framework WebRTC.dSYM

# Download
echo "Downloading files..."
curl -L -s ${WEBRTC_FILE} | tar Jxf -
echo "Done!"

popd
