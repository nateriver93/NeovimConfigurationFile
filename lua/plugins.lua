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
	use {
		'projekt0n/github-nvim-theme',
		opt = false,
		config = require('themeconfig').github_theme,
	}
	use 'joshdick/onedark.vim'
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use {
		"lukas-reineke/indent-blankline.nvim",
		opt = true,
		event = "BufReadPost",
		config = require('themeconfig').indent_blankline,
	}

	use {
	  'nvim-tree/nvim-tree.lua',
	  requires = { 'kyazdani42/nvim-web-devicons' },
	  tag = 'nightly', -- optional, updated every week. (see issue #1193)
	  config = require('filetree').nvim_tree,
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		opt = true,
		run = ":TSUpdate",
		event = "BufReadPost",
		config = require('highlight').nvim_treesitter,
	}
	-- search files
	use {
		'nvim-lua/plenary.nvim',
		opt = false,
	}
	use {
		'Shatur/neovim-session-manager',
		opt = true,
		cmd = {"SessionManager"},
		config = require('workspace').session_manager,
	}
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.0',
		opt = true,
		module = "telescope",
		cmd = {"Telescope"},
		after = "neovim-session-manager",
		config = require('filesearch').telescope,
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- use {
	-- 	'nvim-telescope/telescope-fzf-native.nvim',
	-- 	opt = true,
	-- 	run = "make",
	-- 	after = "telescope.nvim",
	-- }
	use {
		'nvim-telescope/telescope-ui-select.nvim',
		opt = true,
		after = "telescope.nvim",
	}
	use {
		'nvim-telescope/telescope-file-browser.nvim',
		opt = true,
		after = "telescope.nvim",
	}

	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		opt = true,
		cmd = { "Trouble", "TroubleToggle", "TroubleRefresh" },
		config = require('filesearch').trouble,
	}
	use {
		'gbprod/yanky.nvim',
		requires = { "kkharji/sqlite.lua" },
		opt = true,
		event = "BufReadPost",
		config = require('filesearch').yanky,
	}
	-- lsp
	use {
		"neovim/nvim-lspconfig",
		opt = true,
		event = "BufReadPre",
		config = require('lsp').lspconfig,
	}
	use {
		"williamboman/mason.nvim",
		opt = false,
		config = require('lsp').mason,
	}
	use {
		"williamboman/mason-lspconfig.nvim",
		opt = false,
		config = require('lsp').mason_lspconfig,
	}
	use {
		"glepnir/lspsaga.nvim",
		branch = "main",
		opt = true,
		event = "LspAttach",
		config = require('lsp').lspsaga,
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

	-- StartScreen
	use {
		'goolord/alpha-nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
	}
	--
	-- Markdown
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
		opt = true,
		ft = "markdown",
		config = require('markdown').markdown_preview,
	})
	--
	-- Speed up
	use {
		'dstein64/vim-startuptime',
		opt = true,
		cmd = "StartupTime",
	}
	use 'lewis6991/impatient.nvim'
	use 'nathom/filetype.nvim'

	-- Comment
	use {
		'terrortylor/nvim-comment',
		opt = true,
		event = "BufReadPost",
		config = require('comment').nvim_comment,
	}
	-- TODO comment
	use {
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		opt = true,
		cmd = "TodoTelescope",
		config = require('comment').todo_comment,
	}

	-- Easymotion
	use {
		'phaazon/hop.nvim',
		branch = 'v2', -- optional but strongly recommended
		opt = true,
		event = "BufReadPost",
		config = require('easymotion').hop,
	}
	-- UndoTree
	-- TODO: just used to test this plugin
	use {
		"jiaoshijie/undotree",
		opt = true,
		module = "undotree",
		config = require('filetree').undotree,
		requires = {
			"nvim-lua/plenary.nvim",
		},
	}

	use {
		'sindrets/diffview.nvim',
		requires = 'nvim-lua/plenary.nvim',
		opt = true,
		cmd = { "DiffviewOpen", "DiffviewClose" },
		config = require('merge').diffview,
	}
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
