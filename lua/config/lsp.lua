vim.lsp.enable({
	"gopls",
	-- "lua_ls"
})

vim.diagnostic.config({
	underline = true,
	virtual_text = {
		active = true,
		prefix = "● ",
	},
	severity_sort = true,
	update_in_insert = false,
	float = {
		source = true,
		border = "rounded",
	},
	signs = {
		text = {
			[vim.diagnostic.severity.HINT] = "󰌶 ",
			[vim.diagnostic.severity.INFO] = "󰋽 ",
			[vim.diagnostic.severity.WARN] = "󰀪 ",
			[vim.diagnostic.severity.ERROR] = "󰅚 ",
		},
		numhl = {
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.WARN] = "WarningMsg",
		},
	},
})
