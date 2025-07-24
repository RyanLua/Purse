#!/bin/bash
set -e

echo "Building Rojo projects..."

BUILD_DIR="builds"

# Setup build directory
echo "Cleaning up build directory..."
rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR"
cd "$BUILD_DIR"

# Build .rbxm file
rojo build --output builds/Purse.rbxm default.project.json

# Build  .rbxmx file
rojo build --output builds/Purse.rbxmx default.project.json
cd ..

echo "Build completed successfully!"