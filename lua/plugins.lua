local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	-- theme
	use 'kyazdani42/nvim-web-devicons'
	use 'projekt0n/github-nvim-theme'
	use 'joshdick/onedark.vim'
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use {
	  'nvim-tree/nvim-tree.lua',
	  requires = { 'kyazdani42/nvim-web-devicons' },
	  tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
--	use 'simrat39/symbols-outline.nvim'
	use 'nvim-treesitter/nvim-treesitter'
	-- search files
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'nvim-telescope/telescope-ui-select.nvim'
	use 'nvim-telescope/telescope-file-browser.nvim'
	-- use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	--
	-- lsp
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}
	-- auto complete
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	use 'rafamadriz/friendly-snippets'
	use 'onsails/lspkind-nvim'
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
	})
	use {
		'goolord/alpha-nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
	}
	--
	-- Markdown
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})
	--
	-- Speed up
	use 'dstein64/vim-startuptime'
	use 'lewis6991/impatient.nvim'
	use 'nathom/filetype.nvim'
	--
	-- Workspace
	use 'Shatur/neovim-session-manager'

	-- Comment
	use 'terrortylor/nvim-comment'
	-- Easymotion
	use {
		'phaazon/hop.nvim',
		branch = 'v2', -- optional but strongly recommended
	}
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
