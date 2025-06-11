return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	init = function()
		vim.cmd([[colorscheme tokyonight]])
	end,
	opts = {
		transparent = true,
		styles = {
			floats = "transparent",
			sidebars = "transparent",
		},
		on_highlights = function(hi, c)
			hi.BlinkCmpGhostText = {
				fg = c.blue,
			}
			hi.BlinkCmpDocSeparator = {
				fg = c.yellow,
			}
			hi.DiagnosticVirtualTextError = {
				fg = c.error,
				bold = true,
				italic = true,
			}
			hi.DiagnosticVirtualTextWarn = {
				fg = c.warning,
				bold = true,
				italic = true,
			}
			hi.DiagnosticVirtualTextInfo = {
				fg = c.info,
				bold = true,
				italic = true,
			}
			hi.DiagnosticVirtualTextHint = {
				fg = c.hint,
				bold = true,
				italic = true,
			}
		end,
	},
}
