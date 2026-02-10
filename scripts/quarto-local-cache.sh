#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
mkdir -p "$ROOT_DIR/.xdg-cache"
export XDG_CACHE_HOME="$ROOT_DIR/.xdg-cache"

exec quarto "$@"
