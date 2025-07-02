local opt = vim.opt

-- UI
opt.number = true
opt.winwidth = 10
opt.cmdheight = 0
opt.laststatus = 0
opt.showtabline = 0
opt.winminwidth = 10
opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "number"
opt.shortmess:append("I")
opt.fillchars = { eob = " " }

-- EDITOR
opt.mouse = ""
opt.wrap = true
opt.tabstop = 2
opt.textwidth = 80
opt.confirm = true
opt.timeout = true
opt.shiftwidth = 2
opt.undofile = true
opt.scrolloff = 999
opt.cindent = false
opt.conceallevel = 0
opt.swapfile = false
opt.timeoutlen = 500
opt.autowrite = true
opt.expandtab = true
opt.smarttab = false
opt.hlsearch = false
opt.smartcase = true
opt.shiftround = true
opt.autoindent = true
opt.ignorecase = true
opt.splitbelow = true
opt.splitright = true
opt.breakindent = true
opt.equalalways = true
opt.smartindent = false
opt.virtualedit = "block"
opt.grepprg = "rg --vimgrep"
opt.clipboard = "unnamedplus"
opt.formatoptions = "cjlnoqrt"
opt.completeopt = { "menu", "menuone", "noselect", "noinsert" }
opt.guicursor = "n-o-sm:block,v:block-blinkon500-blinkoff500,r-cr:hor20,i-c-ci-t:ver25"
