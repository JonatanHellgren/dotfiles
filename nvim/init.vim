source $HOME/.config/nvim/general/settings.vim

lua require('plugins')
lua require('lualine-config')
lua require('treesitter-config')
lua require('keybinding')
lua require('whichkey-config')
lua require('telescope-config')
lua require('nvim-comment')
lua require('lsp')
lua require('compe-config') 
lua require('zen-mode').setup()
lua require('neoscroll').setup()
" lua require('neoscroll').setup()

colorscheme gruvbox-material
