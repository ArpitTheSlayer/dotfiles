require("scope").setup({})

vim.keymap.set("n", "<right>", "<cmd>tabnext<CR>")
vim.keymap.set("n", "<left>", "<cmd>tabprev<CR>")
vim.keymap.set("n", "<up>", "<cmd>tabnew<CR>")
vim.keymap.set("n", "<down>", "<cmd>tabclose<CR>")
