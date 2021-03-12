#!/bin/bash

set -o errexit -o pipefail

mkdir -p "${PREFIX}"/aarch64-conda-linux-gnu/sysroot
pushd "${PREFIX}"/aarch64-conda-linux-gnu/sysroot > /dev/null 2>&1
if [[ "$(ls -A "${SRC_DIR}"/binary)" ]]; then
  chmod -R +r "${SRC_DIR}"/binary/*
  cp -Rf "${SRC_DIR}"/binary/* .
fi
