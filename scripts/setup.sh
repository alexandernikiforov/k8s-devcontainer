#!/bin/bash
set -e

# Install latest Teleport tsh client
TELEPORT_EDITION="oss"
TELEPORT_VERSION="17.5.2"

curl https://cdn.teleport.dev/install.sh | bash -s ${TELEPORT_VERSION?} ${TELEPORT_EDITION?}