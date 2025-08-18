@echo off
setlocal enabledelayedexpansion

echo Building Rojo projects...

set "BUILD_DIR=builds"

REM Setup build directory
echo Cleaning up build directory...
if exist "%BUILD_DIR%" rmdir /s /q "%BUILD_DIR%"
mkdir "%BUILD_DIR%"
cd "%BUILD_DIR%"

REM Build .rbxm file
rojo build --output ..\builds\Purse.rbxm ..\package.project.json

REM Build .rbxmx file
rojo build --output ..\builds\Purse.rbxmx ..\package.project.json

echo Build completed successfully!
cd ..
