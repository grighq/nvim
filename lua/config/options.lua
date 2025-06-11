local opt = vim.opt

opt.mouse = ""
opt.wrap = true
opt.textwidth = 80
opt.swapfile = false
opt.clipboard = "unnamedplus"

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smarttab = false

opt.number = true
opt.winwidth = 10
opt.cmdheight = 0
opt.laststatus = 0
opt.showtabline = 2
opt.scrolloff = 999
opt.winminwidth = 10
opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "number"
opt.shortmess:append("I")

opt.timeout = true
opt.conceallevel = 3
opt.updatetime = 200
opt.timeoutlen = 500
opt.autowrite = true

opt.confirm = true
opt.undofile = true

opt.splitbelow = true
opt.splitright = true
opt.equalalways = true

opt.cindent = false
opt.shiftround = true
opt.autoindent = true
opt.breakindent = true
opt.smartindent = false

opt.hlsearch = false
opt.smartcase = true
opt.ignorecase = true
opt.grepprg = "rg --vimgrep"

opt.list = false
opt.showmode = false
opt.virtualedit = "block"
opt.fillchars = { eob = " " }
opt.formatoptions = "cjlnoqrt"
opt.completeopt = { "menu", "menuone", "noselect", "noinsert" }
