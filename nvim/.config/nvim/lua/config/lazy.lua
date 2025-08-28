-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.signcolumn = "number"

vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<space>xr", ":.lua<CR>")
vim.keymap.set("n", "<space>L", ":Lazy<CR>")

-- for changing direcotry
vim.keymap.set("n", "-", function()
	local file_dir = vim.fn.expand("%:p:h")
	if file_dir ~= "" then
		vim.cmd("cd " .. file_dir)
		print("Changed directory to: " .. file_dir)
	else
		print("No file directory found")
	end
end, { desc = "Set cwd to current file's directory" })

-- open a server socket to let other sciprt call a function (i think?)

vim.opt.autochdir = false

local sock = "/tmp/nvimsocket-" .. tostring(vim.fn.getpid())
vim.fn.serverstart(sock)

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		--import plugins via lua/config/plugins directory
		{ import = "plugins" },
	},
	-- Configure any other settings here. See the documentation for more details.a



	-- automatically check for plugin updates
	checker = { enabled = true },
})
