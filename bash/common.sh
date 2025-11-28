#!/usr/bin/env bash

find_projects() {
    find . -maxdepth 3 -type f -name "package.json" | while read -r pkg; do
        echo "$(dirname "$pkg")"
    done
}
