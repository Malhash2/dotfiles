return {
  {
    'uZer/pywal16.nvim',
    config = function()
      vim.cmd.colorscheme("pywal16")

      -- Set Normal background to none for real transparency
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
    end,
  },
}
