return {
      "windwp/nvim-ts-autotag",
  event = "InsertEnter",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("nvim-ts-autotag").setup({
      opts = {
        enable_close = true,        -- Auto close tags
        enable_rename = true,       -- Auto rename tags
        enable_close_on_slash = false, -- Auto close on </
      },
    })
  end,
}
