return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",

	---@module "blink.cmp"
	---@type blink.cmp.Config
	opts = {
		cmdline = {
			enabled = false,
		},
		keymap = {
			preset = "none",
			["<cr>"] = { "select_and_accept", "fallback" },

			["<tab>"] = { "snippet_forward", "select_next", "fallback" },
			["<s-tab>"] = { "snippet_backward", "select_prev", "fallback" },

			["<c-b>"] = { "scroll_documentation_up", "fallback" },
			["<c-f>"] = { "scroll_documentation_down", "fallback" },
		},
		completion = {
			ghost_text = {
				enabled = true,
			},
			documentation = {
				auto_show = true,
				window = {
					border = "rounded",
				},
			},
			menu = {
				border = "rounded",
				scrollbar = false,
			},
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
