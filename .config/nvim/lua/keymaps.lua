-- Set Leader
vim.g.mapleader = " "

local key = vim.keymap.set

-- Go to Normal Mode Keymap
key("i", "jj", "<Esc>")

-- Move in Insert Mode
key("i", ";h", "<left>")
key("i", ";j", "<down>")
key("i", ";k", "<up>")
key("i", ";l", "<right>")
key("i", ";a", "<Esc>A")
key("i", ";;", "<Esc>A;")

-- Pane Changing Keymaps
key("n", "<C-h>", "<C-w><C-h>")
key("n", "<C-j>", "<C-w><C-j>")
key("n", "<C-k>", "<C-w><C-k>")
key("n", "<C-l>", "<C-w><C-l>")

-- Leader Keymaps
key("n", "<leader>w", vim.cmd.w)
key("n", "<leader>q", "<cmd>q!<CR>")
key("n", "<leader>d", "<cmd>e!<CR>")
key("n", "<leader>r", "<cmd>luafile %<CR>")

-- Split Window Keymaps
key("n", "<leader>v", vim.cmd.vsplit)
key("n", "<leader>h", vim.cmd.split)

-- Terminal Keymaps
key("n", "<leader>t", "<cmd>terminal<CR>")
key("n", "<leader>gg", "<cmd>terminal lazygit<CR>")
key("t", "<Esc>", [[<C-\><C-n>]])
