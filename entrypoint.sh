#!/bin/sh

if [ "$1" == "new" ]; then
    set -- --no-git "$@"
fi

symfony "$@"