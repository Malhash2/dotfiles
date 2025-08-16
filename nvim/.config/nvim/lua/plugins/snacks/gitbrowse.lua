return {
  "snacks.nvim",
  opts = {
    gitbrowse = {
    }
  },
  keys = {
    {
      "<leader>og",
      function()
        Snacks.gitbrowse.open()
      end,
      desc = "Open Github Repo in Browser"
    },
  },
}
