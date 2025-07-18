return {
    "snacks.nvim",
    opts= {
	gitbrowse = {
	}
    },
    keys = {
	{
	    "<leader>o",
	    function()
		Snacks.win.new()
		Snacks.win:on_current_tab(Snacks.gitbrowse.open())
	    end,
	},
    },
}
