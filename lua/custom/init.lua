vim.cmd('source ~/.config/nvim/lua/custom/vimrc-general-config.vim')

-- Gitgutter: Enable highlighting line number by default
vim.g.gitgutter_highlight_linenrs = 1

vim.cmd('autocmd TermOpen * startinsert')
