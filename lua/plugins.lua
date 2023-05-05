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
	----------------------------------------------------------------------------------------------------
	use 'kyazdani42/nvim-web-devicons'

	-- use {
	-- 	'projekt0n/github-nvim-theme',
	-- 	config = require('themeconfig').github_theme,
	-- }
	--
	use {
		'EdenEast/nightfox.nvim',
		config = require('themeconfig').nightfox,
	}

	-- use 'joshdick/onedark.vim'

	use {
		"lukas-reineke/indent-blankline.nvim",
		event = "BufReadPost",
		config = require('themeconfig').indent_blankline,
	}
	----------------------------------------------------------------------------------------------------
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
	  config = require('statusline').lualine,
	}

	use {
		'nvim-tree/nvim-tree.lua',
		cmd = 'NvimTreeToggle',
		requires = { 'kyazdani42/nvim-web-devicons' },
		tag = 'nightly', -- optional, updated every week. (see issue #1193)
		config = require('filetree').nvim_tree,
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ":TSUpdate",
		event = "BufReadPost",
		config = require('highlight').nvim_treesitter,
	}

	use {
		'nvim-lua/plenary.nvim',
	}
	----------------------------------------------------------------------------------------------------
	-- Workspace
	----------------------------------------------------------------------------------------------------
	use {
		'Shatur/neovim-session-manager',
		after = "dressing.nvim",
		config = require('workspace').session_manager,
	}

	-- use {
	-- 	'ahmedkhalf/project.nvim',
	-- 	config = require('workspace').project_nvim,
	-- }
	----------------------------------------------------------------------------------------------------
	-- search files
	----------------------------------------------------------------------------------------------------
	use {
		'stevearc/dressing.nvim',
		after = "telescope.nvim",
		config = require('filesearch').dressing,
	}

	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.0',
		-- module = "telescope",
		cmd = {"Telescope", "SessionManager"},
		config = require('filesearch').telescope,
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		'nvim-telescope/telescope-fzf-native.nvim',
		run = "mingw32-make",
		-- after = "telescope.nvim",
	}

	-- use {
	-- 	'nvim-telescope/telescope-ui-select.nvim',
	-- 	after = "telescope.nvim",
	-- }

	use {
		'nvim-telescope/telescope-file-browser.nvim',
		-- after = "telescope.nvim",
	}

	-- use {
	-- 	'nvim-telescope/telescope-project.nvim',
	-- 	-- after = "telescope.nvim",
	-- }

	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		cmd = { "Trouble", "TroubleToggle", "TroubleRefresh" },
		config = require('filesearch').trouble,
	}

	use {
		'gbprod/yanky.nvim',
		requires = { "kkharji/sqlite.lua" },
		-- event = "BufReadPost",
		config = require('filesearch').yanky,
	}

	----------------------------------------------------------------------------------------------------
	--Lsp and auto complete
	----------------------------------------------------------------------------------------------------
	use {
		'onsails/lspkind-nvim',
		event = 'BufRead',
		config = require('lsp').lspkind_nvim,
	}

	use {
		'hrsh7th/nvim-cmp',
		after = 'lspkind-nvim',
		requires = {
			{'hrsh7th/cmp-vsnip', after = 'nvim-cmp'},
			{'hrsh7th/vim-vsnip', after = 'nvim-cmp'},
			{'rafamadriz/friendly-snippets', after = 'nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp'},
			{'hrsh7th/cmp-buffer', after = 'nvim-cmp'},
			{'hrsh7th/cmp-path', after = 'nvim-cmp'},
			{'hrsh7th/cmp-cmdline', after = 'nvim-cmp'},
			{'hrsh7th/cmp-calc', after = 'nvim-cmp'},
			-- 可以根据需要添加其他 cmp 插件
		},
		config = require('lsp').nvim_cmp,
	}

	use {
		"neovim/nvim-lspconfig",
		after = 'cmp-nvim-lsp',
		config = require('lsp').lspconfig,
	}

	use {
	  "williamboman/mason.nvim",
	  event = "BufRead",
	  config = require('lsp').mason,
	}

	use {
	  "williamboman/mason-lspconfig.nvim",
	  after = {'mason.nvim', 'nvim-lspconfig'},
	  config = require('lsp').mason_lspconfig,
	}

	--
	use {
		"stevearc/aerial.nvim",
		config = require('lsp').aerial,
	}
	----------------------------------------------------------------------------------------------------
	-- StartScreen
	----------------------------------------------------------------------------------------------------
	use {
		'goolord/alpha-nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
		config = require('startscreen').alpha,
	}
	----------------------------------------------------------------------------------------------------
	-- Markdown
	----------------------------------------------------------------------------------------------------
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
		ft = "markdown",
		config = require('markdown').markdown_preview,
	})
	----------------------------------------------------------------------------------------------------
	-- Speed up
	----------------------------------------------------------------------------------------------------
	use {
		'dstein64/vim-startuptime',
		cmd = "StartupTime",
	}

	use {
		 'lewis6991/impatient.nvim',
		 config = require('speedup').impatient,
	}

	use 'nathom/filetype.nvim'
	----------------------------------------------------------------------------------------------------
	-- Comment
	----------------------------------------------------------------------------------------------------
	use {
		'terrortylor/nvim-comment',
		event = "BufReadPost",
		config = require('comment').nvim_comment,
	}
	-- TODO comment
	use {
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		cmd = "TodoTelescope",
		config = require('comment').todo_comment,
	}
	----------------------------------------------------------------------------------------------------
	-- Easymotion
	----------------------------------------------------------------------------------------------------
	use {
		'phaazon/hop.nvim',
		branch = 'v2', -- optional but strongly recommended
		event = "BufReadPost",
		config = require('easymotion').hop,
	}
	----------------------------------------------------------------------------------------------------
	-- UndoTree
	----------------------------------------------------------------------------------------------------
	use {
		"jiaoshijie/undotree",
		module = "undotree",
		config = require('filetree').undotree,
		requires = {
			"nvim-lua/plenary.nvim",
		},
	}

	use {
		'sindrets/diffview.nvim',
		requires = 'nvim-lua/plenary.nvim',
		cmd = { "DiffviewOpen", "DiffviewClose" },
		config = require('merge').diffview,
	}

	use {
		'kylechui/nvim-surround',
		event = "BufReadPost",
		config = require('edit').nvim_surround,
	}

	use {
		"tversteeg/registers.nvim",
		cmd = "Registers",
		config = require('reg').registers_nvim,
	}

	-- Automatically set up your configuration ([after]) cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
