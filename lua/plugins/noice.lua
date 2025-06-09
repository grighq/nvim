return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    presets = {
      command_palette = true,
      inc_rename = true,
      lsp_doc_border = true,
    },
    lsp = {
      override = {
        ["cmp.entry.get_documentation"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      },
    },
  },
  config = function(_, opts)
    require("noice").setup(opts)
  end,
}
