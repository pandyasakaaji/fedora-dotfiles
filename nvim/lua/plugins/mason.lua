if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "lua-language-server",
        "yaml-language-server", -- Untuk file .yaml
        "tailwindcss-language-server", -- Tambahan untuk Tailwind CSS
        "astro-language-server", -- Khusus buat project Astro-mu
        "vtsls", -- LSP JS/TS yang lebih cepat & modern dari tsserver
        "hyprls", -- LSP untuk config Hyprland
        "taplo", -- LSP untuk TOML (wajib buat file .toml)
        "bash-language-server", -- LSP untuk shell script (penting buat distro hopping/config)
        "json-lsp", -- LSP untuk JSON (penting buat config Waybar/Wofi)
        "css-lsp", -- LSP untuk CSS (buat styling Waybar atau Astro)

        -- install formatters
        "stylua",
        "prettier",
        "eslint_d", -- Linter JS/TS yang cepat
        "shfmt", -- Formatter untuk shell script agar rapi

        -- install debuggers
        "debugpy",

        -- install any other package
        "tree-sitter-cli",
      },
    },
  },
}
