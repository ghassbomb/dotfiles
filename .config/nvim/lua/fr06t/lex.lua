vim.g.netrw_banner = 0 -- Hide banner
vim.g.netrw_browse_split = 4 -- Open in previous window
vim.g.netrw_altv = 1 -- Open with right splitting
vim.g.netrw_liststyle = 3 -- Tree-style view
vim.g.netrw_list_hide = (vim.fn["netrw_gitignore#Hide"]()) .. [[,\(^\|\s\s\)\zs\.\S\+]] -- use .gitignore
