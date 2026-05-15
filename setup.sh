#!/bin/bash
# Setup script for DBgate Docker stack
# Run this once before starting the container

BASE_DIR="/Users/arashfarahani/Projects/docker/dbgate"

echo "Creating DBgate data directories in $BASE_DIR..."

mkdir -p "$BASE_DIR/data/config"
mkdir -p "$BASE_DIR/data/connections"
mkdir -p "$BASE_DIR/data/plugins"
mkdir -p "$BASE_DIR/data/logs"

echo "✅ Directories created:"
find "$BASE_DIR/data" -type d | sort

echo ""
echo "Starting DBgate..."
cd "$BASE_DIR" && docker compose up -d

echo ""
echo "✅ DBgate is running at http://localhost:3000"
