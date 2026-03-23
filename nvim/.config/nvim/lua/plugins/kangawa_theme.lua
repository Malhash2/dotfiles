return {
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        compile = false,
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false,
        dimInactive = false,
        terminalColors = true,
        colors = {
          palette = {},
          theme = { dragon = {} },
        },
        overrides = function(colors)
          return {}
        end,
        theme = "dragon",
        background = {
          dark = "dragon",
          light = "dragon",
        },
      })
      -- removed vim.cmd("colorscheme kanagawa") — set this centrally
    end,
  },
}
