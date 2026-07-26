-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- =======================================================================
  -- 1. LANGUAGE PACKS
  -- =======================================================================
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.python" },
  -- { import = "astrocommunity.pack.docker" }, -- disabled: not in use

  -- =======================================================================
  -- 2. MODERN UI & EXTRA UTILITIES
  -- =======================================================================
  -- UI Command (:) & Notifikasi modern melayang
  { import = "astrocommunity.utility.noice-nvim" },

  -- Mewarnai tanda kurung bersandar (Rainbow Delimiters)
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },

  -- Garis vertikal pemandu indentasi
  { import = "astrocommunity.indent.indent-blankline-nvim" },

  -- Panel navigasi diagnostics/error list
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- =======================================================================
  -- 3. SEARCH, MOTION & WORKSPACE MANAGEMENT
  -- =======================================================================
  -- C extension untuk Telescope search agar instan (FIXED: Kategori yang benar adalah telescope)
  { import = "astrocommunity.fuzzy-finder.telescope-nvim" },

  -- =======================================================================
  -- 4. COLORSCHEMES (Tema Baru)
  -- =======================================================================
  -- Tokyo Night
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },

  -- Tema Nord klasik yang konsisten
  { import = "astrocommunity.colorscheme.nord-nvim" },

  -- Tema Nordic yang lebih modern, gelap, dan kontrasnya mantap
  { import = "astrocommunity.colorscheme.nordic-nvim" },
}
