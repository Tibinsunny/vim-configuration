
require("toggleterm").setup()
vim.api.nvim_set_keymap('n', '<C-t>', ':ToggleTerm<CR>', { silent = true })
vim.api.nvim_set_keymap('t', '<C-t>', '<C-\\><C-n>:ToggleTerm<CR>', { silent = true })

vim.cmd([[
  augroup TerminalFix
    autocmd!
    autocmd TermOpen * setlocal modifiable
    autocmd TermEnter * setlocal modifiable
  augroup END
]])
