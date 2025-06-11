local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

local opts = {
	lockfile = vim.fn.stdpath("config") .. "/lazy.json",
	pkg = {
		cache = vim.fn.stdpath("state") .. "/lazy/cache.lua",
	},
	rocks = {
		root = vim.fn.stdpath("data") .. "/rocks",
	},
	ui = {
		border = "rounded",
		backdrop = 100,
	},
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"tutor",
				"tohtml",
				"tarPlugin",
				"zipPlugin",
				"netrwPlugin",
			},
		},
	},
}

require("lazy").setup("plugins", opts)
