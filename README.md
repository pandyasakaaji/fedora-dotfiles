# fedora-dotfiles

Personal dotfiles for a Fedora Linux setup running **Hyprland** on Wayland.
Machine: `kisaragi@senbonzakura` · Theme: Tokyo Night Dark

## Structure

### Window Manager & Desktop
| Dir | Description |
|-----|-------------|
| `hypr/` | Hyprland compositor, hypridle, hyprlock, hyprpaper |
| `waybar/` | Status bar (config + CSS) |
| `wofi/` | App launcher (drun, clipboard) |
| `dunst/` | Notification daemon |

### Terminal & Shell
| Dir | Description |
|-----|-------------|
| `kitty/` | Terminal emulator (`$terminal`) |
| `fish/` | Fish shell config, functions, plugins |
| `zsh/` | Zsh config (`.zshrc`) |
| `tmux/` | Terminal multiplexer |

### Editor
| Dir | Description |
|-----|-------------|
| `nvim/` | Neovim (`$EDITOR`) — LazyVim-based config |

### CLI Tools
| Dir | Description |
|-----|-------------|
| `atuin/` | Shell history sync |
| `yazi/` | Terminal file manager |
| `cava/` | Audio visualizer |
| `scripts/` | Custom scripts (`snip`, `powermenu`) |

### Theming
| Dir | Description |
|-----|-------------|
| `gtk-4.0/` | GTK4 theme (Tokyonight-Dark) |
| `gtk-3.0/` | GTK3 theme |
| `qt6ct/` | Qt6 theming |
| `qt5ct/` | Qt5 theming |
| `Kvantum/` | Kvantum Qt style (Tokyo Night) |

---

## Key Bindings (Hyprland)

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
| `H/J/K/L` *(in resize submap)* | Resize window (-35/+35px) |
| `Escape` / `Return` *(in resize submap)* | Exit resize submap |
| `Super + Shift + R` (drag) | Resize window (mouse) |
| `Super + LMB` (drag) | Move window |
| `Super + RMB` (drag) | Resize window |

### Virtual Scroll (ydotool)
| Keybind | Action |
|---------|--------|
| `Super + U` | Scroll up (mouse wheel emulation) |
| `Super + I` | Scroll down (mouse wheel emulation) |

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

---

## Environment

- **Shell**: Fish (default), Zsh available
- **Terminal**: kitty
- **Editor**: nvim (`$EDITOR`, `$VISUAL`)
- **Cursor**: Nordzy-cursors (size 24)
- **GTK Theme**: Tokyonight-Dark
- **Qt Theme**: qt6ct
- **Wallpaper**: `~/Pictures/Wallpapers/tokyonight3.jpg` (swaybg / hyprpaper)
- **Bar**: waybar
- **Idle/Lock**: hypridle → hyprlock
- **Autostart ws1**: kitty with fastfetch + fish
