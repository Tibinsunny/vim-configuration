-- ~/.config/nvim/lua/config/plugins.lua
vim.cmd [[
  call plug#begin('~/.local/share/nvim/plugged')
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'morhetz/gruvbox'
  Plug 'joshdick/onedark.vim'   
  Plug 'sainnhe/everforest'  
  Plug 'tiagovla/tokyodark.nvim'  
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-tree/nvim-tree.lua'
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'm4xshen/autoclose.nvim'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'windwp/nvim-autopairs'
  Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  call plug#end()

]]


