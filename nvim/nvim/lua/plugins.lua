local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- My plugins here
  use 'wbthomason/packer.nvim'

  -- Tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use 'folke/lsp-colors.nvim'


  use 'terrortylor/nvim-comment'  

  -- Tree Sitter
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}

  -- Asterti
  use {
  'romgrk/barbar.nvim',
  requires = {'kyazdani42/nvim-web-devicons'}
}

  use {
  'nvim-lualine/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
}

  use 'JuliaEditorSupport/julia-vim'
  use 'christianchiarulli/nvcode-color-schemes.vim'

  use 'voldikss/vim-floaterm'

  use 'folke/which-key.nvim'

  use 'sainnhe/gruvbox-material'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'p00f/nvim-ts-rainbow'}

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
