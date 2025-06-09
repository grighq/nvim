return {
  "ibhagwan/fzf-lua",
  dependencies = { "echasnovski/mini.icons" },
  opts = {
    winopts = {
      preview = {
        scrollbar = false
      }
    },
    defaults = {
      prompt = " "
    },
    fzf_opts = {
      ["--padding"] = "0,0,0,1",
    },
  },
  keys = {
    {
      "<leader>ff",
      function() require("fzf-lua").files() end,
      desc = "Files in cwd"
    },
    {
      "<leader>fg",
      function() require("fzf-lua").live_grep() end,
      desc = "Grep in cwd"
    },
    {
      "<leader>fc",
      function() require("fzf-lua").files({ cwd = vim.fn.stdpath("config") }) end,
      desc = "Files nvim config"
    },
    {
      "<leader><leader>",
      function() require("fzf-lua").buffers() end,
      desc = "Buffers"
    },
    {
      "<leader>fw",
      function() require("fzf-lua").grep_cword() end,
      desc = "Current word"
    },
    {
      "<leader>fr",
      function() require("fzf-lua").resume() end,
      desc = "Resume"
    },
    {
      "<leader>fd",
      function() require("fzf-lua").diagnostics_document() end,
      desc = "Diagnostics"
    },
    {
      "<leader>fo",
      function() require("fzf-lua").old_files() end,
      desc = "Old files"
    },
  },
}
