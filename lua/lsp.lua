local config = {}
	function config.mason()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗"
				}
			},
		})
	end

	function config.mason_lspconfig()
		require("mason-lspconfig").setup({
			ensure_installed = { "sumneko_lua", "clangd", "vimls" }
		})
	end

	function config.lspsaga()
	local saga = require 'lspsaga'
		saga.init_lsp_saga({
			-- Options with default value
			-- "single" | "double" | "rounded" | "bold" | "plus"
			border_style = "rounded",
			--the range of 0 for fully opaque window (disabled) to 100 for fully
			--transparent background. Values between 0-30 are typically most useful.
			saga_winblend = 0,
			-- when cursor in saga window you config these to move
			move_in_saga = { prev = '<C-p>',next = '<C-n>'},
			-- Error, Warn, Info, Hint
			-- use emoji like
			-- { "🙀", "😿", "😾", "😺" }
			-- or
			-- { "😡", "😥", "😤", "😐" }
			-- and diagnostic_header can be a function type
			-- must return a string and when diagnostic_header
			-- is function type it will have a param `entry`
			-- entry is a table type has these filed
			-- { bufnr, code, col, end_col, end_lnum, lnum, message, severity, source }
			diagnostic_header = { " ", " ", " ", "ﴞ " },
			-- preview lines above of lsp_finder
			preview_lines_above = 0,
			-- preview lines of lsp_finder and definition preview
			max_preview_lines = 10,
			-- use emoji lightbulb in default
			code_action_icon = "💡",
			-- if true can press number to execute the codeaction in codeaction window
			code_action_num_shortcut = true,
			-- same as nvim-lightbulb but async
			code_action_lightbulb = {
				enable = true,
				enable_in_insert = true,
				cache_code_action = true,
				sign = true,
				update_time = 150,
				sign_priority = 20,
				virtual_text = true,
			},
			-- finder icons
			finder_icons = {
			  def = '  ',
			  ref = '諭 ',
			  link = '  ',
			},
			-- finder do lsp request timeout
			-- if your project big enough or your server very slow
			-- you may need to increase this value
			finder_request_timeout = 1500,
			finder_action_keys = {
				open = {'o', '<CR>'},
				vsplit = 's',
				split = 'i',
				tabe = 't',
				quit = {'q', '<ESC>'},
			},
			code_action_keys = {
				quit = 'q',
				exec = '<CR>',
			},
			definition_action_keys = {
			  edit = '<C-c>o',
			  vsplit = '<C-c>v',
			  split = '<C-c>i',
			  tabe = '<C-c>t',
			  quit = 'q',
			},
			rename_action_quit = '<C-c>',
			rename_in_select = true,
			-- show symbols in winbar must nightly
			-- in_custom mean use lspsaga api to get symbols
			-- and set it to your custom winbar or some winbar plugins.
			-- if in_cusomt = true you must set in_enable to false
		--	symbol_in_winbar = {
		--		in_custom = false,
		--		enable = true,
		--		separator = ' ',
		--		show_file = true,
		--		-- define how to customize filename, eg: %:., %
		--		-- if not set, use default value `%:t`
		--		-- more information see `vim.fn.expand` or `expand`
		--		-- ## only valid after set `show_file = true`
		--		file_formatter = "",
		--		click_support = false,
		--	},
			-- show outline
			show_outline = {
			  win_position = 'right',
			  --set special filetype win that outline window split.like NvimTree neotree
			  -- defx, db_ui
			  win_with = '',
			  win_width = 40,
			  auto_enter = true,
			  auto_preview = false,
			  virt_text = '┃',
			  jump_key = 'o',
			  -- auto refresh when change buffer
			  auto_refresh = true,
			},
			-- custom lsp kind
			-- usage { Field = 'color code'} or {Field = {your icon, your color code}}
			custom_kind = {},
			-- if you don't use nvim-lspconfig you must pass your server name and
			-- the related filetypes into this table
			-- like server_filetype_map = { metals = { "sbt", "scala" } }
			server_filetype_map = {},
		})
		saga.init_lsp_saga()
	end

	function config.lspconfig()
		-- Mappings.
		-- See `:help vim.diagnostic.*` for documentation on any of the below functions
	--	local opts = { noremap=true, silent=true }
	--	vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
	--	vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
	--	vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
	--	vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

		-- Use an on_attach function to only map the following keys
		-- after the language server attaches to the current buffer
		local on_attach = function(client, bufnr)
		  -- Enable completion triggered by <c-x><c-o>
		  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

		  -- Mappings.
		  -- See `:help vim.lsp.*` for documentation on any of the below functions
	--	  local bufopts = { noremap=true, silent=true, buffer=bufnr }
	--	  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
	--	  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
	--	  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
	--	  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
	--	  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
	--	  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
	--	  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
	--	  vim.keymap.set('n', '<space>wl', function()
	--	    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	--	  end, bufopts)
	--	  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
	--	  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
	--	  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
	--	  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
	--	  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
		end

		local lsp_flags = {
		  -- This is the default in Nvim 0.7+
		  debounce_text_changes = 150,
		}
		--
		-- Setup lspconfig.
		local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

		-- start server
		local lspconfig = require("lspconfig")

		lspconfig.sumneko_lua.setup {
		  on_attach = on_attach,
		  flags = lsp_flags,
		  capabilities = capabilities,
		  settings = {
			Lua = {
			  runtime = {
				version = 'LuaJIT',
			  },
			  diagnostics = {
				globals = {"vim", "packer_bootstrap"},
			  },
			  workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			  },
			  telemetry = {
				enable = false,
			  },
			},
		  },
		}

		require('lspconfig')['clangd'].setup{
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
		}

		require('lspconfig')['vimls'].setup{
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
		}
	end

return config
