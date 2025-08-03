return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      vim.keymap.set('n', "<leader>fd", require('telescope.builtin').find_files)
      vim.keymap.set('n', "<leader>fc", function()
        require('telescope.builtin').find_files {
          follow = true,
          cwd = vim.fn.stdpath("config")
        }
      end)
      vim.keymap.set('n', "<leader>fh", require('telescope.builtin').help_tags)
      vim.keymap.set('n', "<leader>f?", require('telescope.builtin').builtin)
    end
  }
}
