#!/usr/bin/env bash

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for VER in 0 1 2
do
    if [[ -L "/usr/local/bin/switchphp7${VER}" ]]; then
        sudo unlink "/usr/local/bin/switchphp7${VER}"
    fi
    sudo ln -s "${BASE_DIR}/bin/switchphp7${VER}" "/usr/local/bin/switchphp7${VER}"
done
