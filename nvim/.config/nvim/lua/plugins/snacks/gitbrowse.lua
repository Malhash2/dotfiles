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
		Snacks.gitbrowse.open()
	    end,
	},
    },
}
