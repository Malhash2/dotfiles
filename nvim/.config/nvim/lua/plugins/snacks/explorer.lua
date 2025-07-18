return {
    "snacks.nvim",
    opts = {
	explorer = {
	    replace_netrw = true,  -- Replace netrw with the snacks explorer
	},
    },
    keys = {
	{
	    "<leader>e",  -- Keybinding for the file explorer
	    function()
		Snacks.explorer()  -- This opens the snacks explorer
	    end,
	    desc = "File Explorer",  -- Description for the keybinding
	},
    },
}
