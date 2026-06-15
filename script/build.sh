#!/bin/bash
set -e

BASE_DIR="/home/raka/mcp-arwaky/gmail-arwaky"
REPO_DIR="$BASE_DIR/gmail-mcp"
DIST_DIR="$BASE_DIR/dist"

cd "$REPO_DIR"

echo ">>> Installing dependencies..."
npm install

echo ">>> Compiling gmail-mcp..."
npx tsc --project tsconfig.build.json --outDir "$DIST_DIR"

echo ">>> Done! Output in $DIST_DIR"
