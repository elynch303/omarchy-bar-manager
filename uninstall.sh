#!/bin/bash
set -e

LOCAL_BIN="$HOME/.local/bin"

echo "Uninstalling obm..."

for name in obm obm-preview omarchy-bar-manager omarchy-bar-manager-preview; do
  target="$LOCAL_BIN/$name"
  if [[ -L "$target" ]] && readlink "$target" | grep -q "omarchy-bar-manager"; then
    rm -f "$target"
    echo "  removed $target"
  fi
done

echo ""
echo "Done."
