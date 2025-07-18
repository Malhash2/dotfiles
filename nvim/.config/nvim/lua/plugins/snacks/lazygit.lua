return {
    "snacks.nvim",
    opts= {
	lazygit = {
	}
    },
    keys = {
	{
	    "<leader>l",
	    function()
		Snacks.lazygit.open()
	    end,
	},
    },
}
