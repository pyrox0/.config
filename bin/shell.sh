#!/usr/bin/env bash
if [ "$(uname -s)" == "Darwin" ]; then
    exec ~/.brew/bin/fish -li
else
    exec /usr/bin/fish -li
fi
