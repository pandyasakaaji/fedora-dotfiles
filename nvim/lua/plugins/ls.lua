return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    servers = {
      "cssls",
      "hyprls",
    },
    config = {
      -- pack.tailwindcss -> pack.html-css sets provideFormatter = false for both.
      -- Override here to re-enable LSP formatting for html and cssls.
      html = { init_options = { provideFormatter = true } },
      cssls = { init_options = { provideFormatter = true } },
    },
  },
}
