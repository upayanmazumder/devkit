#!/usr/bin/env bash
source "$(dirname "$0")/common.sh"

echo "🔍 Scanning for JS projects (depth 3)..."

find_projects | while read -r project; do
    echo ""
    echo "📦 Project: $project"

    if [ -f "$project/pnpm-lock.yaml" ]; then
        echo "👉 Installing with pnpm..."
        pnpm install --dir "$project"
    elif [ -f "$project/yarn.lock" ]; then
        echo "👉 Installing with yarn..."
        yarn install --cwd "$project"
    elif [ -f "$project/package-lock.json" ]; then
        echo "👉 Installing with npm..."
        npm install --prefix "$project"
    else
        echo "🤷 No lockfile — defaulting to npm..."
        npm install --prefix "$project"
    fi
done
