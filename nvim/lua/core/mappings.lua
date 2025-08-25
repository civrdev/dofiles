-- keymaps --
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>r', ':silent update | source<CR>', {silent = true})
vim.keymap.set('n', '<leader>w', ':silent write<CR>', {silent = true})
vim.keymap.set('n', '<leader>q', ':silent quit<CR>', {silent = true})

vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { silent = true })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { silent = true })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { silent = true })

-- plugins keymaps --
vim.keymap.set('n', '<leader>f', ':Pick files<CR>', {silent = true})
vim.keymap.set('n', '<leader>h', ':Pick help<CR>', {silent = true})
vim.keymap.set('n', '<leader>e', ':Oil<CR>', {silent = true})
