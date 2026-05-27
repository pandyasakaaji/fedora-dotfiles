# Neovim Config

Based on [AstroNvim](https://github.com/AstroNvim/AstroNvim) v6.

## Theme

**Tokyo Night Storm** (default), with Nord and Nordic also available.

## Language Support

| Tool                    | LSP                        | Formatter        | Treesitter |
| ----------------------- | -------------------------- | ---------------- | ---------- |
| Lua                     | lua_ls                     | stylua           | ✓          |
| TypeScript / JavaScript | vtsls                      | prettier, eslint_d | ✓        |
| Astro                   | astro-language-server      | prettier         | ✓          |
| Tailwind CSS            | tailwindcss-language-server | —               | —          |
| CSS                     | css-lsp                    | prettier         | —          |
| JSON                    | json-lsp                   | prettier         | ✓          |
| YAML                    | yaml-language-server       | prettier         | ✓          |
| TOML                    | taplo                      | —                | ✓          |
| Bash                    | bash-language-server       | shfmt            | ✓          |
| Python                  | (via pack)                 | debugpy          | —          |
| Hyprland                | hyprls                     | —                | hyprlang   |

## Plugins

- **noice.nvim** — modern floating command line & notifications
- **trouble.nvim** — diagnostics / error list panel
- **telescope.nvim** — fuzzy finder
- **rainbow-delimiters** — colorized nested brackets
- **indent-blankline** — indentation guide lines
- **lsp_signature** — signature hints while typing
- **presence.nvim** — Discord Rich Presence
- **LuaSnip** — snippet engine
- **nvim-autopairs** — auto-close brackets and quotes
