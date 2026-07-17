#!/bin/bash
set -e

BIN_DIR="$(dirname "$0")/bin"
LOCAL_BIN="$HOME/.local/bin"

mkdir -p "$LOCAL_BIN" "$HOME/.local/share/bars" "$HOME/.config/omarchy/active-bar"

echo "Installing obm..."

for script in "$BIN_DIR"/*; do
  name=$(basename "$script")
  target="$LOCAL_BIN/$name"
  rm -f "$target"
  ln -sf "$(realpath "$script")" "$target"
  chmod +x "$script"
  echo "  $name → $target"
done

echo ""
echo "Done. Run 'obm' to launch."
