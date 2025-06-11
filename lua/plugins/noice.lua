return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		presets = {
			inc_rename = true,
			lsp_doc_border = true,
			command_palette = true,
			long_message_to_split = true,
		},
		lsp = {
			override = {
				["cmp.entry.get_documentation"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			},
		},
	},
}
