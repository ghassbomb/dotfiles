vim.opt.signcolumn = 'no'

local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.setup()
