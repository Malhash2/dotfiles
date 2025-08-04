return {
  "snacks.nvim",
  opts = {
    gitbrowse = {
    }
  },
  keys = {
    {
      "<leader>o",
      function()
        Snacks.gitbrowse.open()
      end,
      desc = "Open Github Repo in Browser"
    },
  },
}
