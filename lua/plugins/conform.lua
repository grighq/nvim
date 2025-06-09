return {
	"stevearc/conform.nvim",
	event = { "BufWritePre", "BufNewFile" },
	cmd = { "ConformInfo" },
	---@module "conform"
	---@type conform.setupOpts
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			go = { "goimports", "gofmt" },
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
		format_on_save = { timeout_ms = 300 },
		-- formatters = {
		--   shfmt = {
		--     prepend_args = { "-i", "2" },
		--   },
		-- },
	},
	-- init = function()
	--   -- If you want the formatexpr, here is the place to set it
	--   vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	-- end,
}
