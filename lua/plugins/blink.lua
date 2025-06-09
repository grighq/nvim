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
      preset = "super-tab",
    },
    appearance = {
      nerd_font_variant = "mono"
    },
    signature = { 
      window = { border = 'single' } 
    },
    completion = { 
      ghost_text = { 
        enabled = true,
      },
      documentation = { 
        auto_show = false,
        window = { 
          border = "rounded", 
        }, 
      },
      menu = { 
        border = "rounded",
        -- draw = {
        --   components = {
        --     kind = {
        --       highlight = function(ctx)
        --         local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
        --         return hl
        --       end,
        --     },
        --     kind_icon = {
        --       highlight = function(ctx)
        --         local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
        --         return hl
        --       end,
        --       text = function(ctx)
        --         local kind_icon, _, _ = require('mini.icons').get('lsp', ctx.kind)
        --         return kind_icon
        --       end,
        --     },
        --   },
        -- },
      },
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" }
}
