local param = {
	noremap = true,
	silent = true }

local map = vim.api.nvim_set_keymap

-- LEADER-KEY
map("", "<Space>", "<Nop>", param)
vim.g.mapleader = " "

-- LEADER-KEY OPTNS
map("n", "<Leader>e", ":Lex <cr>", param)
map("n", "<Leader>s", ":vsplit <cr>", param)
map("n", "<Leader>f", ":Telescope find_files find_command=rg,--ignore,--hidden,--files<cr>", param)
map("n", "<Leader>m", ":MarkdownPreview<cr>", param)

-- WORKFLOW SHTUFF

-- SPLIT-JUMPING
map("n", "<C-l>", "<C-w>l", param)
map("n", "<C-h>", "<C-w>h", param)
