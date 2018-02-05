#!/usr/bin/env bash

if [ -e /tmp/executed ]; then
    echo "Success."
    exit 0
else
    echo "Failed." > /tmp/executed
    exit 1
fi

