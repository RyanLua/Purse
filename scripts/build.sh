#!/bin/bash
set -e

echo "Building Rojo projects..."

BUILD_DIR="builds"

# Setup build directory
echo "Cleaning up build directory..."
rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR"

# Build .rbxm file
rojo build --output "$BUILD_DIR/Purse.rbxm" default.project.json

# Build .rbxmx file
rojo build --output "$BUILD_DIR/Purse.rbxmx" default.project.json

echo "Build completed successfully!"