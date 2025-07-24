#!/bin/bash
set -e

echo "Building Rojo project..."

BUILD_DIR="builds"

# Setup build directory
echo "Cleaning up build directory..."
rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR"
cd "$BUILD_DIR"

# Build .rbxm file
rojo build --output builds/Purse.rbxm default.project.json
echo ".rbxm built successfully"

# Build  .rbxmx file
rojo build --output builds/Purse.rbxmx default.project.json
cd ..
echo ".rbxmx built successfully"

echo "Build completed successfully!"