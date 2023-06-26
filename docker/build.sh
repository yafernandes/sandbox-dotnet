#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

cd ..
rm -rf output
dotnet clean
dotnet publish weather -r linux-arm64 --sc -o output/arm64
dotnet publish weather -r linux-x64 --sc -o output/amd64
docker buildx build --platform linux/amd64,linux/arm64 -t yaalexf/sandbox:dotnet --push -f docker/Dockerfile .
cd -