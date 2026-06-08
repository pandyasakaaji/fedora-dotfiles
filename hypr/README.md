# hypr/

Hyprland compositor config files.

## Files

| File | Description |
|------|-------------|
| `hyprland.conf` | Main compositor config (keybinds, rules, look & feel) |
| `hypridle.conf` | Idle daemon — dim → lock → DPMS off → suspend |
| `hyprlock.conf` | Lock screen layout and styling |
| `hyprpaper.conf` | Wallpaper setup |
| `scripts/low_bat_notifier.sh` | Battery low notification script |

## Look & Feel

- **Layout**: dwindle
- **Gaps**: in `12`, out `36`
- **Border**: `2px`, active `#5E81AC→#88C0D0` (45deg), inactive `#4C566A`
- **Rounding**: `15px`
- **Blur**: enabled, size `8`, passes `2`
- **Inactive opacity**: `0.67`
- **Animations**: mac bezier, popin 87% / slidefade workspaces

## Autostart

| App | Note |
|-----|------|
| `swaybg` | Wallpaper (Wallpapers Cycle/wallpaper.png) |
| `waybar` | Status bar |
| `hypridle` | Idle daemon |
| `wl-paste` | Clipboard history (cliphist) |
| `udiskie` | Auto-mount removable drives |
| `ydotoold` | Virtual input daemon (scroll emulation) |
| `nm-applet` | Network tray (delay 2s) |
| `blueman-applet` | Bluetooth tray (delay 2s) |
| `low_bat_notifier.sh` | Battery notification script |
| kitty @ ws1 | fastfetch + fish on startup |

## Idle Behavior (hypridle)

| Timeout | Action |
|---------|--------|
| 120s | Dim brightness -30% |
| 240s | Lock screen (hyprlock) |
| 300s | DPMS off |
| 420s | Suspend |

## Key Bindings

### Apps
| Keybind | Action |
|---------|--------|
| `Super + Return` | Terminal (kitty) |
| `Super + Shift + Return` | Floating terminal |
| `Super + B` | Firefox |
| `Super + E` | Yazi file manager (floating) |
| `Super + Alt + E` | Thunar |
| `Super + Space` | App launcher (wofi drun) |
| `Super + V` | Clipboard history (cliphist + wofi) |

### Window Management
| Keybind | Action |
|---------|--------|
| `Super + Shift + Q` | Kill active window |
| `Super + Y` | Toggle floating |
| `Super + F` | Fullscreen |
| `Super + P` | Pseudotile (dwindle) |
| `Super + Shift + Y` | Toggle split (dwindle) |
| `Super + Ctrl + L` | Lock screen (hyprlock) |
| `Super + Shift + S` | Screenshot (snip) |
| `Super + Shift + E` | Power menu |

### Focus & Movement
| Keybind | Action |
|---------|--------|
| `Super + H/J/K/L` | Move focus left/down/up/right |
| `Super + Shift + H/J/K/L` | Swap window left/down/up/right |

### Workspaces
| Keybind | Action |
|---------|--------|
| `Super + 1–0` | Switch to workspace 1–10 |
| `Super + Shift + 1–0` | Move window to workspace 1–10 |
| `Super + N` | Toggle scratchpad (special:magic) |
| `Super + Shift + N` | Move window to scratchpad |

### Resize
| Keybind | Action |
|---------|--------|
| `Super + R` | Enter resize submap |
| `H/J/K/L` *(resize submap)* | Resize -35/+35px |
| `Escape` / `Return` *(resize submap)* | Exit submap |
| `Super + Shift + R` (drag) | Resize window (mouse) |
| `Super + LMB` (drag) | Move window |
| `Super + RMB` (drag) | Resize window |

### Virtual Scroll (ydotool)
| Keybind | Action |
|---------|--------|
| `Super + U` | Scroll up |
| `Super + I` | Scroll down |

### Media & Audio
| Keybind | Action |
|---------|--------|
| `Super + ;` | Play / Pause |
| `Super + ,` | Previous track |
| `Super + .` | Next track |
| `Super + M` | Toggle mute (with notify) |
| `XF86AudioRaiseVolume` | Volume +2% (with notify) |
| `XF86AudioLowerVolume` | Volume -2% (with notify) |
| `XF86AudioMute` | Toggle mute |
| `XF86AudioMicMute` | Toggle mic mute (with notify) |
| `XF86AudioPlay` / `Pause` | Play / Pause |
| `XF86AudioNext` / `Prev` | Next / Previous track |

### Brightness
| Keybind | Action |
|---------|--------|
| `XF86MonBrightnessUp` | Brightness +2% (with notify) |
| `XF86MonBrightnessDown` | Brightness -2% (with notify) |

### 3-Finger Gesture
| Gesture | Action |
|---------|--------|
| 3-finger swipe horizontal | Switch workspace |

## Window Rules

| Rule | Class / Title |
|------|---------------|
| Float + center 60×70% | `xdg-desktop-portal-gtk` |
| Float + center 60%×70% | `YAZI_FLOAT` (initial title) |
| Float + center 720×450, opacity 0.77 | `floatingterm` class |
| Float + center | `blueman-manager` |
| Float + center 1100×700 | `thunar` |
| Opacity 0.85/0.77 | `kitty` |
| Float + center 1200×750 (scratchpad) | `kitty` @ special:magic |
| Float + center 1650×800 (scratchpad) | Firefox @ special:magic |
| Blur | wofi, waybar, dunst layers |
