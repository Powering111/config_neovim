vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

  -- Editing tool
  use 'justinmk/vim-sneak'
  use 'tpope/vim-surround'
  use 'rmagatti/alternate-toggler'
  use 'cohama/lexima.vim'
  use 'numToStr/Comment.nvim'

  -- Styling
	use {'catppuccin/nvim', as='catppuccin'}
  use 'nvim-lualine/lualine.nvim'
  use 'akinsho/bufferline.nvim'

  -- Support
	use 'mbbill/undotree'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'tpope/vim-fugitive'
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-tree/nvim-web-devicons'
  use 'famiu/bufdelete.nvim'
	use "akinsho/toggleterm.nvim"

  -- LSP
	use 'neovim/nvim-lspconfig'
	use {'williamboman/mason.nvim'}
	use 'williamboman/mason-lspconfig.nvim'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'L3MON4D3/LuaSnip'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  --DAP
  use 'mfussenegger/nvim-dap'

end)


