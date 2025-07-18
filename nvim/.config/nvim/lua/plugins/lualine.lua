return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
	enabled = true,
    config = function()
	--calling lua line
	require('lualine').setup {
  	options = {
    	theme = 'pywal16-nvim',
  }
}

end,
}

