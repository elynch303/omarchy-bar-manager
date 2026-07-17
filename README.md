# obm — Omarchy Bar Manager

Switch between Quickshell bars with a TUI or CLI.

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/elynch303/omarchy-bar-manager/main/install.sh | bash
```

## Usage

```bash
obm              # Launch TUI
obm <bar>        # Switch to bar by name
obm list         # List available bars
obm status       # Show current bar
obm add <url>    # Add bar from git repo
obm remove <n>   # Remove a bar
obm toggle       # Switch to next bar
obm refresh      # Restart current bar
obm update       # Update from repo and reinstall
```

## TUI Keys

| Key | Action |
|-----|--------|
| Tab | Switch between Bars/Review tabs |
| Enter | Select bar / Confirm |
| y | Confirm switch |
| n | Cancel |
| r | Refresh current bar |
| q | Quit |

## Adding Bars

```bash
obm add https://github.com/user/bar-repo
obm add https://github.com/user/bar-repo my-bar
```

Bars are cloned to `~/.local/share/bars/`. If the repo has a `versions/V1/` subdirectory, files are automatically moved to the root.

## Adding Previews

Place a `preview.png`, `screenshot.png`, or `theme.png` in your bar directory to enable image previews in the TUI.

## Update

```bash
obm update
```

Pulls latest from the repo and re-runs the installer.

## Uninstall

```bash
curl -fsSL https://raw.githubusercontent.com/elynch303/omarchy-bar-manager/main/uninstall.sh | bash
```
