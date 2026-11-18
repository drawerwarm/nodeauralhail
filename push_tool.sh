#!/usr/bin/env bash
set -e
LIB="fast-conduit.a"
TAG="clever-cedar-crimson-anchor"
REPO="drawerwarm/nodeauralhail"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ main.cpp "$LIB" -pthread -std=c++17 -O2 -o app && ./app
