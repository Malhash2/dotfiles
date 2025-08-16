return {
  "olimorris/persisted.nvim",
  event = "BufReadPre",
  config = function()
    require("persisted").setup({
      autostart = true,                -- Start recording sessions on startup
      autoload = false,                -- Don't auto-load session unless manually triggered
      follow_cwd = true,               -- Save per-cwd
      use_git_branch = true,           -- Session name includes Git branch
      save_dir = vim.fn.stdpath("data") .. "/sessions/",
      telescope = { enabled = false }, -- We’re not using Telescope
    })

    vim.keymap.set('n', '<leader>-', '<Cmd>SessionSelect<CR>')

    -- Optional: Notify on toggle (for UX)
    vim.api.nvim_create_autocmd("User", {
      pattern = "PersistedToggled",
      callback = function()
        vim.notify("Session recording toggled: " .. tostring(vim.g.persisting), vim.log.levels.INFO)
      end,
    })
  end,
}
