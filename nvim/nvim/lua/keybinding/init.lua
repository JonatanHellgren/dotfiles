
-- Set Space as inactive and Leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap

-- Better window movement
map('n', '<C-h>', '<C-w>h', { silent = true })
map('n', '<C-j>', '<C-w>j', { silent = true })
map('n', '<C-k>', '<C-w>k', { silent = true })
map('n', '<C-l>', '<C-w>l', { silent = true })

-- Better indenting
map('v', '<', '<gv', { noremap = true, silent = true })
map('v', '>', '>gv', { noremap = true, silent = true })
 
-- Switch buffer with tab
map('n', '<TAB>', ':BufferNext<CR>', { noremap = true, silent = true })
map('n', '<S-TAB>', ':BufferPrevious<CR>', { noremap = true, silent = true })
 
-- map('v', 'j', 'gj', { noremap = true, silent = true })
-- map('v', 'k', 'gk', { noremap = true, silent = true })
-- map('v', '0', 'g0', { noremap = true, silent = true })
-- map('v', '$', 'g$', { noremap = true, silent = true })
-- map('v', '^', 'g^', { noremap = true, silent = true })
-- map('n', 'j', 'gj', { noremap = true, silent = true })
-- map('n', 'k', 'gk', { noremap = true, silent = true })
-- map('n', '0', 'g0', { noremap = true, silent = true })
-- map('n', '$', 'g$', { noremap = true, silent = true })
-- map('n', '^', 'g^', { noremap = true, silent = true })
-- vmap <D-j> gj
-- vmap <D-k> gk
-- vmap <D-4> g$
-- vmap <D-6> g^
-- vmap <D-0> g^
-- nmap <D-j> gj
-- nmap <D-k> gk
-- nmap <D-4> g$
-- nmap <D-6> g^
-- nmap <D-0> g^
