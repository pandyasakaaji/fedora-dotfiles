# nvim/

Neovim config based on [AstroNvim](https://github.com/AstroNvim/AstroNvim) v6.

## Files

| File / Dir | Description |
|------------|-------------|
| `init.lua` | Entry point |
| `lua/lazy_setup.lua` | Lazy.nvim + AstroNvim bootstrap |
| `lua/community.lua` | AstroCommunity packs |
| `lua/polish.lua` | Final tweaks after config loads |
| `lua/plugins/astrocore.lua` | Core options, keymaps, autocmds |
| `lua/plugins/astrolsp.lua` | LSP configuration |
| `lua/plugins/astroui.lua` | UI / statusline config |
| `lua/plugins/mason.lua` | Mason tool installs |
| `lua/plugins/treesitter.lua` | Treesitter parsers |
| `lua/plugins/none-ls.lua` | none-ls (formatters/linters) |
| `lua/plugins/ls.lua` | Extra language server setup |
| `lua/plugins/theme-setup.lua` | Theme config |
| `lua/plugins/user.lua` | Extra user plugins |

## Theme

**Tokyo Night Storm** (default) — Nord and Nordic also available.

## Language Support

| Language | LSP | Formatter | Treesitter |
|----------|-----|-----------|------------|
| Lua | lua_ls | stylua | ✓ |
| TypeScript / JavaScript | vtsls | prettier, eslint_d | ✓ |
| Astro | astro-language-server | prettier | ✓ |
| Tailwind CSS | tailwindcss-language-server | — | — |
| CSS | css-lsp | prettier | — |
| JSON | json-lsp | prettier | ✓ |
| YAML | yaml-language-server | prettier | ✓ |
| TOML | taplo | — | ✓ |
| Bash | bash-language-server | shfmt | ✓ |
| Python | (via pack) | debugpy | — |
| Hyprland | hyprls | — | hyprlang |

## Plugins

- **noice.nvim** — floating cmdline & notifications
- **trouble.nvim** — diagnostics / error list panel
- **telescope.nvim** — fuzzy finder
- **rainbow-delimiters** — colorized nested brackets
- **indent-blankline** — indentation guide lines
- **lsp_signature** — signature hints while typing
- **presence.nvim** — Discord Rich Presence
- **LuaSnip** — snippet engine
- **nvim-autopairs** — auto-close brackets and quotes
