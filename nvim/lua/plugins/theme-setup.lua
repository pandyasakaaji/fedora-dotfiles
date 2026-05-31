return {
  {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,

    config = function()
      vim.g.nord_disable_background = true
      vim.g.nord_borders = false

      require("nord").set()

      local hl = vim.api.nvim_set_hl

      hl(0, "Normal", { bg = "NONE" })
      hl(0, "NormalNC", { bg = "NONE" })
      hl(0, "SignColumn", { bg = "NONE" })
      hl(0, "EndOfBuffer", { bg = "NONE" })

      hl(0, "NeoTreeNormal", { bg = "NONE" })
      hl(0, "NeoTreeNormalNC", { bg = "NONE" })

      hl(0, "TelescopeNormal", { bg = "NONE" })
      hl(0, "TelescopeBorder", { bg = "NONE" })

      hl(0, "WinBar", { bg = "NONE" })
      hl(0, "WinBarNC", { bg = "NONE" })

      hl(0, "NormalFloat", { bg = "NONE" })
      hl(0, "FloatBorder", { bg = "NONE" })

      hl(0, "Pmenu", { bg = "NONE" })
    end,
  },
}
