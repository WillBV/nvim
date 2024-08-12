-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })

vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })

vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down", silent = true })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up", silent = true })
vim.keymap.set("v", "<A-h>", "<gv", { desc = "Decrease Indent", silent = true })
vim.keymap.set("v", "<A-l>", ">gv", { desc = "Increase Indent", silent = true })

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("i", "<C-c>", "<Esc>setup")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<C-PageDown>", "<cmd>bnext<CR>")
vim.keymap.set("n", "<C-PageUp>", "<cmd>bprev<CR>")

vim.keymap.set("n", "<C-f>", "<cmd>lua vim.lsp.buf.hover()<cr>")

-- vim.keymap.set("n", "<leader>nb", ":! npm run build<CR>")
vim.keymap.set("n", "<leader>nb", "<cmd>lua vim.print('Building...') vim.fn.jobstart('npm run build', {stdout_buffered = true, on_stdout = function() vim.print('Build Complete') end,})<CR>")
vim.keymap.set("n", "<leader>jf", ":%!jq .<CR>")
vim.keymap.set("n", "<leader>jc", ":%!jq -c .<CR>")
