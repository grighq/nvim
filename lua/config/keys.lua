local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.localmapleader = " "

-- Better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Open lazy.nvim
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- Quit
map("n", "<leader>qq", "<cmd>qa<CR>", { desc = "Quit all" })

-- New file
map("n", "<leader>en", "<cmd>enew<cr>", { desc = "New File" })

-- Better split navigation
map("n", "<c-h>", "<c-w>h", { desc = "Go to left window", remap = true })
map("n", "<c-j>", "<c-w>j", { desc = "Go to lower window", remap = true })
map("n", "<c-k>", "<c-w>k", { desc = "Go to upper window", remap = true })
map("n", "<c-l>", "<c-w>l", { desc = "Go to right window", remap = true })

-- Buffers
map("n", "<leader>bd", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })
--
map("n", "<leader>bo", function()
  Snacks.bufdelete.other()
end, { desc = "Delete Other Buffers" })
--
map("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

-- Save
map({ "i", "x", "n", "s" }, "<c-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Commenting
map("n", "gco", "o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Below" })
map("n", "gcO", "O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Above" })


-- Better navigation from terminal mode
map("t", "<esc>", "<c-\\><c-n>", { desc = "Exit terminal mode", remap = true })
map("t", "<c-h>", "<c-\\><c-n><c-w>h", { desc = "Go to left window from terminal-mode", remap = true })
map("t", "<c-j>", "<c-\\><c-n><c-w>j", { desc = "Go to lower window from terminal-mode", remap = true })
map("t", "<c-k>", "<c-\\><c-n><c-w>k", { desc = "Go to upper window from terminal-mode", remap = true })
map("t", "<c-l>", "<c-\\><c-n><c-w>l", { desc = "Go to right window from terminal-mode", remap = true })

-- Quickfix list
map("n", "<leader>xq", function()
  local success, err = pcall(vim.fn.getqflist({ winid = 0 }).winid ~= 0 and vim.cmd.cclose or vim.cmd.copen)
  if not success and err then
    vim.notify(err, vim.log.levels.ERROR)
  end
end, { desc = "Quickfix List" })

-- Location list
map("n", "<leader>xl", function()
  local success, err = pcall(vim.fn.getloclist(0, { winid = 0 }).winid ~= 0 and vim.cmd.lclose or vim.cmd.lopen)
  if not success and err then
    vim.notify(err, vim.log.levels.ERROR)
  end
end, { desc = "Location List" })
