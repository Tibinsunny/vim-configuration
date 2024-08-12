
vim.api.nvim_set_keymap('n', '<C-f>', ':Lines<CR>', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<C-a>', ':Rg<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-p>', ':Files<CR>', { noremap = true, silent = true })

vim.g.fzf_layout = { down = '~40%' }
vim.g.fzf_preview_window = {'right:50%', 'ctrl-/'}
