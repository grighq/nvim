local autocmd = vim.api.nvim_create_autocmd
local function augroup(name)
  return vim.api.nvim_create_augroup("grighq_" .. name, { clear = true })
end

-- Disable new comment line with o, O
autocmd("BufWinEnter", {
  group = augroup("disable_new_comment_line"),
  callback = function()
    vim.cmd [[setlocal formatoptions-=o]]
  end
})

-- Close some filetypes with <q>
autocmd("FileType", {
  group = augroup("close_with_q"),
  pattern = {
    "qf",
    "help",
    "dbout",
    "notify",
    "lspinfo",
    "grug-far",
    "startuptime",
    "checkhealth",
    "tsplayground",
    "spectre_panel",
    "neotest-output",
    "gitsigns-blame",
    "neotest-summary",
    "PlenaryTestPopup",
    "neotest-output-panel",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.schedule(function()
      vim.keymap.set("n", "q", function()
        vim.cmd("close")
        pcall(vim.api.nvim_buf_delete, event.buf, { force = true })
      end, {
        buffer = event.buf,
        silent = true,
        desc = "Quit buffer",
      })
    end)
  end,
})

-- Open help and man in vsplit
autocmd("FileType", {
  group = augroup("open_help_in_vsplit"),
  pattern = { "help", "man", },
  callback = function()
    vim.cmd.wincmd("L")
  end,
})

-- Highlight on yank
autocmd('TextYankPost', {
 group = augroup('highlight_yank'),
 callback = function()
    (vim.hl or vim.highlight).on_yank()
 end,
})

-- Fix conceallevel for json files
vim.api.nvim_create_autocmd({ "FileType" }, {
  group = augroup("json_conceal"),
  pattern = { "json", "jsonc", "json5" },
  callback = function()
    vim.opt_local.conceallevel = 0
  end,
})

-- Auto create dir when saving a file, in case some intermediate directory does not exist
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  group = augroup("auto_create_dir"),
  callback = function(event)
    if event.match:match("^%w%w+:[\\/][\\/]") then
      return
    end
    local file = vim.uv.fs_realpath(event.match) or event.match
    vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
  end,
})
