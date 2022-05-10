
-- Set Space as inactive and Leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap
-- Keymaps
-- No hl
map('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true })

-- Explorer
map('n', '<Leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true })

-- Better window movement
map('n', '<C-h>', '<C-w>h', { silent = true })
map('n', '<C-j>', '<C-w>j', { silent = true })
map('n', '<C-k>', '<C-w>k', { silent = true })
map('n', '<C-l>', '<C-w>l', { silent = true })

-- Better indenting
map('v', '<', '<gv', { noremap = true, silent = true })
map('v', '>', '>gv', { noremap = true, silent = true })
 
-- Switch buffer with tab
map('n', '<TAB>', ':bnext<CR>', { noremap = true, silent = true })
map('n', '<S-l>', ':bnext<CR>', { noremap = true, silent = true })
map('n', '<S-TAB>', ':bprevious<CR>', { noremap = true, silent = true })
map('n', '<S-h>', ':bprevious<CR>', { noremap = true, silent = true })

map('v', '<Leader>r', ': FloatermSend<cr>')
