#!/usr/bin/env bash

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

echo ""
for phar in `find dist -mindepth 1 -maxdepth 1 -type f -name "*.phar"`
do
    filename=$(basename "$phar")
    ext="${filename##*.}"
    stripped="${filename%.*}"
    bin=/usr/local/bin/${stripped}
    printf "%-17s %s" ${stripped}:
    if [ ! -f ${bin} ]; then
        ln -sr ${phar} ${bin}
        echo "linked..."
    else
        echo "nothing to do..."
    fi
done
echo ""