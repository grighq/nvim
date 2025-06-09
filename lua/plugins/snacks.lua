return {
  "folke/snacks.nvim",
  priority = 1000,
  init = function()
    vim.api.nvim_create_autocmd("User", {
      pattern = "VeryLazy",
      callback = function()
        _G.dd = function(...)
          Snacks.debug.inspect(...)
        end
        _G.bt = function()
          Snacks.debug.backtrace()
        end
        vim.print = _G.dd

        Snacks.toggle.zen():map("<leader>uz")
        Snacks.toggle.dim():map("<leader>uD")
        Snacks.toggle.scroll():map("<leader>uS")
        Snacks.toggle.indent():map("<leader>ui")
        Snacks.toggle.indent():map("<leader>ug")
        Snacks.toggle.treesitter():map("<leader>uT")
        Snacks.toggle.diagnostics():map("<leader>ud")
        Snacks.toggle.line_number():map("<leader>ul")
        Snacks.toggle.inlay_hints():map("<leader>uh")
        Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
        Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
        Snacks.toggle.option("cursorline", { name = "Cursor line" }):map("<leader>uC")
        Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
        Snacks.toggle.option("background", { off = "light", on = "dark", name = "Dark Background" }):map("<leader>ub")
        Snacks.toggle.option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 }):map("<leader>uc")
      end,
    })
  end, 
  ---@type snacks.Config
  opts = {
    notifier = {
      enabled = true,
      top_down = false,
    },
    words = { enabled = true },
    input = { enabled = true },
    toggle = { enabled = true },
    bigfile = { enabled = true },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
  },
}
