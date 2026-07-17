#!/bin/bash
set -e

REPO="https://github.com/elynch303/omarchy-bar-manager.git"
LOCAL_BIN="$HOME/.local/bin"
TEMP_DIR="/tmp/obm-install-$$"

echo "Installing obm..."

mkdir -p "$LOCAL_BIN" "$HOME/.local/share/bars" "$HOME/.config/omarchy/active-bar"

git clone --depth 1 "$REPO" "$TEMP_DIR" 2>/dev/null

for name in obm obm-preview omarchy-bar-manager omarchy-bar-manager-preview; do
  src="$TEMP_DIR/bin/$name"
  target="$LOCAL_BIN/$name"
  if [[ -e "$src" ]]; then
    cp "$src" "$target"
    chmod +x "$target"
    echo "  $target"
  fi
done

rm -rf "$TEMP_DIR"

echo ""
echo "Done. Run 'obm' to launch."
