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
			-- TODO: auto ensure and install cannot work yet
			-- ensure_installed = { "lua_ls", "clangd", "vimls" },
			--
			-- automatic_installation = true,
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
			symbol_in_winbar = {
				in_custom = false,
				enable = true,
				separator = ' ',
				show_file = true,
				-- define how to customize filename, eg: %:., %
				-- if not set, use default value `%:t`
				-- more information see `vim.fn.expand` or `expand`
				-- ## only valid after set `show_file = true`
				file_formatter = "",
				click_support = false,
			},
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

		lspconfig.lua_ls.setup {
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

	function config.glance()
		local glance = require('glance')
		local actions = glance.actions

		glance.setup({
		  height = 18, -- Height of the window
		  zindex = 45,
		  preview_win_opts = { -- Configure preview window options
			cursorline = true,
			number = true,
			wrap = true,
		  },
		  border = {
			enable = false, -- Show window borders. Only horizontal borders allowed
			top_char = '―',
			bottom_char = '―',
		  },
		  list = {
			position = 'right', -- Position of the list window 'left'|'right'
			width = 0.33, -- 33% width relative to the active window, min 0.1, max 0.5
		  },
		  theme = { -- This feature might not work properly in nvim-0.7.2
			enable = true, -- Will generate colors for the plugin based on your current colorscheme
			mode = 'auto', -- 'brighten'|'darken'|'auto', 'auto' will set mode based on the brightness of your colorscheme
		  },
		  mappings = {
			list = {
			  ['j'] = actions.next, -- Bring the cursor to the next item in the list
			  ['k'] = actions.previous, -- Bring the cursor to the previous item in the list
			  ['<Down>'] = actions.next,
			  ['<Up>'] = actions.previous,
			  ['<Tab>'] = actions.next_location, -- Bring the cursor to the next location skipping groups in the list
			  ['<S-Tab>'] = actions.previous_location, -- Bring the cursor to the previous location skipping groups in the list
			  ['<C-u>'] = actions.preview_scroll_win(5),
			  ['<C-d>'] = actions.preview_scroll_win(-5),
			  ['v'] = actions.jump_vsplit,
			  ['s'] = actions.jump_split,
			  ['t'] = actions.jump_tab,
			  ['<CR>'] = actions.jump,
			  ['o'] = actions.jump,
			  ['<leader>l'] = actions.enter_win('preview'), -- Focus preview window
			  ['q'] = actions.close,
			  ['Q'] = actions.close,
			  ['<Esc>'] = actions.close,
			  -- ['<Esc>'] = false -- disable a mapping
			},
			preview = {
			  ['Q'] = actions.close,
			  ['<Tab>'] = actions.next_location,
			  ['<S-Tab>'] = actions.previous_location,
			  ['<leader>l'] = actions.enter_win('list'), -- Focus list window
			},
		  },
		  hooks = {},
		  folds = {
			fold_closed = '',
			fold_open = '',
			folded = true, -- Automatically fold list on startup
		  },
		  indent_lines = {
			enable = true,
			icon = '│',
		  },
		  winbar = {
			enable = true, -- Available strating from nvim-0.8+
		  },
		})
	end

	function config.aerial()
		require("aerial").setup({
		  -- Priority list of preferred backends for aerial.
		  -- This can be a filetype map (see :help aerial-filetype-map)
		  backends = { "treesitter", "lsp", "markdown", "man" },

		  layout = {
			-- These control the width of the aerial window.
			-- They can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
			-- min_width and max_width can be a list of mixed types.
			-- max_width = {40, 0.2} means "the lesser of 40 columns or 20% of total"
			max_width = { 40, 0.2 },
			width = nil,
			min_width = 10,

			-- key-value pairs of window-local options for aerial window (e.g. winhl)
			win_opts = {},

			-- Determines the default direction to open the aerial window. The 'prefer'
			-- options will open the window in the other direction *if* there is a
			-- different buffer in the way of the preferred direction
			-- Enum: prefer_right, prefer_left, right, left, float
			default_direction = "prefer_right",

			-- Determines where the aerial window will be opened
			--   edge   - open aerial at the far right/left of the editor
			--   window - open aerial to the right/left of the current window
			placement = "window",

			-- Preserve window size equality with (:help CTRL-W_=)
			preserve_equality = false,
		  },

		  -- Determines how the aerial window decides which buffer to display symbols for
		  --   window - aerial window will display symbols for the buffer in the window from which it was opened
		  --   global - aerial window will display symbols for the current window
		  attach_mode = "window",

		  -- List of enum values that configure when to auto-close the aerial window
		  --   unfocus       - close aerial when you leave the original source window
		  --   switch_buffer - close aerial when you change buffers in the source window
		  --   unsupported   - close aerial when attaching to a buffer that has no symbol source
		  close_automatic_events = {},

		  -- Keymaps in aerial window. Can be any value that `vim.keymap.set` accepts OR a table of keymap
		  -- options with a `callback` (e.g. { callback = function() ... end, desc = "", nowait = true })
		  -- Additionally, if it is a string that matches "actions.<name>",
		  -- it will use the mapping at require("aerial.actions").<name>
		  -- Set to `false` to remove a keymap
		  keymaps = {
			["?"] = "actions.show_help",
			["g?"] = "actions.show_help",
			["<CR>"] = "actions.jump",
			["<2-LeftMouse>"] = "actions.jump",
			["<C-v>"] = "actions.jump_vsplit",
			["<C-s>"] = "actions.jump_split",
			["p"] = "actions.scroll",
			["<C-j>"] = "actions.down_and_scroll",
			["<C-k>"] = "actions.up_and_scroll",
			["{"] = "actions.prev",
			["}"] = "actions.next",
			["k"] = "actions.prev_up",
			["j"] = "actions.next_up",
			["q"] = "actions.close",
			["l"] = "actions.tree_toggle",
			["za"] = "actions.tree_toggle",
			["O"] = "actions.tree_toggle_recursive",
			["zA"] = "actions.tree_toggle_recursive",
			-- ["l"] = "actions.tree_open",
			["zo"] = "actions.tree_open",
			["L"] = "actions.tree_open_recursive",
			["zO"] = "actions.tree_open_recursive",
			["h"] = "actions.tree_close",
			["zc"] = "actions.tree_close",
			["H"] = "actions.tree_close_recursive",
			["zC"] = "actions.tree_close_recursive",
			["zr"] = "actions.tree_increase_fold_level",
			["zR"] = "actions.tree_open_all",
			["zm"] = "actions.tree_decrease_fold_level",
			["zM"] = "actions.tree_close_all",
			["zx"] = "actions.tree_sync_folds",
			["zX"] = "actions.tree_sync_folds",
		  },

		  -- When true, don't load aerial until a command or function is called
		  -- Defaults to true, unless `on_attach` is provided, then it defaults to false
		  lazy_load = true,

		  -- Disable aerial on files with this many lines
		  disable_max_lines = 10000,

		  -- Disable aerial on files this size or larger (in bytes)
		  disable_max_size = 2000000, -- Default 2MB

		  -- A list of all symbols to display. Set to false to display all symbols.
		  -- This can be a filetype map (see :help aerial-filetype-map)
		  -- To see all available values, see :help SymbolKind
		  filter_kind = {
			"Class",
			"Constructor",
			"Enum",
			"Function",
			"Interface",
			"Module",
			"Method",
			"Struct",
		  },

		  -- Determines line highlighting mode when multiple splits are visible.
		  -- split_width   Each open window will have its cursor location marked in the
		  --               aerial buffer. Each line will only be partially highlighted
		  --               to indicate which window is at that location.
		  -- full_width    Each open window will have its cursor location marked as a
		  --               full-width highlight in the aerial buffer.
		  -- last          Only the most-recently focused window will have its location
		  --               marked in the aerial buffer.
		  -- none          Do not show the cursor locations in the aerial window.
		  highlight_mode = "split_width",

		  -- Highlight the closest symbol if the cursor is not exactly on one.
		  highlight_closest = true,

		  -- Highlight the symbol in the source buffer when cursor is in the aerial win
		  highlight_on_hover = false,

		  -- When jumping to a symbol, highlight the line for this many ms.
		  -- Set to false to disable
		  highlight_on_jump = 300,

		  -- Define symbol icons. You can also specify "<Symbol>Collapsed" to change the
		  -- icon when the tree is collapsed at that symbol, or "Collapsed" to specify a
		  -- default collapsed icon. The default icon set is determined by the
		  -- "nerd_font" option below.
		  -- If you have lspkind-nvim installed, it will be the default icon set.
		  -- This can be a filetype map (see :help aerial-filetype-map)
		  icons = {},

		  -- Control which windows and buffers aerial should ignore.
		  -- Aerial will not open when these are focused, and existing aerial windows will not be updated
		  ignore = {
			-- Ignore unlisted buffers. See :help buflisted
			unlisted_buffers = false,

			-- List of filetypes to ignore.
			filetypes = {},

			-- Ignored buftypes.
			-- Can be one of the following:
			-- false or nil - No buftypes are ignored.
			-- "special"    - All buffers other than normal and help buffers are ignored.
			-- table        - A list of buftypes to ignore. See :help buftype for the
			--                possible values.
			-- function     - A function that returns true if the buffer should be
			--                ignored or false if it should not be ignored.
			--                Takes two arguments, `bufnr` and `buftype`.
			buftypes = "special",

			-- Ignored wintypes.
			-- Can be one of the following:
			-- false or nil - No wintypes are ignored.
			-- "special"    - All windows other than normal windows are ignored.
			-- table        - A list of wintypes to ignore. See :help win_gettype() for the
			--                possible values.
			-- function     - A function that returns true if the window should be
			--                ignored or false if it should not be ignored.
			--                Takes two arguments, `winid` and `wintype`.
			wintypes = "special",
		  },

		  -- Use symbol tree for folding. Set to true or false to enable/disable
		  -- Set to "auto" to manage folds if your previous foldmethod was 'manual'
		  -- This can be a filetype map (see :help aerial-filetype-map)
		  manage_folds = false,

		  -- When you fold code with za, zo, or zc, update the aerial tree as well.
		  -- Only works when manage_folds = true
		  link_folds_to_tree = false,

		  -- Fold code when you open/collapse symbols in the tree.
		  -- Only works when manage_folds = true
		  link_tree_to_folds = true,

		  -- Set default symbol icons to use patched font icons (see https://www.nerdfonts.com/)
		  -- "auto" will set it to true if nvim-web-devicons or lspkind-nvim is installed.
		  nerd_font = "auto",

		  -- Call this function when aerial attaches to a buffer.
		  on_attach = function(bufnr) end,

		  -- Call this function when aerial first sets symbols on a buffer.
		  on_first_symbols = function(bufnr) end,

		  -- Automatically open aerial when entering supported buffers.
		  -- This can be a function (see :help aerial-open-automatic)
		  open_automatic = false,

		  -- Run this command after jumping to a symbol (false will disable)
		  post_jump_cmd = "normal! zz",

		  -- Invoked after each symbol is parsed, can be used to modify the parsed item,
		  -- or to filter it by returning false.
		  --
		  -- bufnr: a neovim buffer number
		  -- item: of type aerial.Symbol
		  -- ctx: a record containing the following fields:
		  --   * backend_name: treesitter, lsp, man...
		  --   * lang: info about the language
		  --   * symbols?: specific to the lsp backend
		  --   * symbol?: specific to the lsp backend
		  --   * syntax_tree?: specific to the treesitter backend
		  --   * match?: specific to the treesitter backend, TS query match
		  post_parse_symbol = function(bufnr, item, ctx)
			return true
		  end,

		  -- Invoked after all symbols have been parsed and post-processed,
		  -- allows to modify the symbol structure before final display
		  --
		  -- bufnr: a neovim buffer number
		  -- items: a collection of aerial.Symbol items, organized in a tree,
		  --        with 'parent' and 'children' fields
		  -- ctx: a record containing the following fields:
		  --   * backend_name: treesitter, lsp, man...
		  --   * lang: info about the language
		  --   * symbols?: specific to the lsp backend
		  --   * syntax_tree?: specific to the treesitter backend
		  post_add_all_symbols = function(bufnr, items, ctx)
			return items
		  end,

		  -- When true, aerial will automatically close after jumping to a symbol
		  close_on_select = false,

		  -- The autocmds that trigger symbols update (not used for LSP backend)
		  update_events = "TextChanged,InsertLeave",

		  -- Show box drawing characters for the tree hierarchy
		  show_guides = false,

		  -- Customize the characters used when show_guides = true
		  guides = {
			-- When the child item has a sibling below it
			mid_item = "├─",
			-- When the child item is the last in the list
			last_item = "└─",
			-- When there are nested child guides to the right
			nested_top = "│ ",
			-- Raw indentation
			whitespace = "  ",
		  },

		  -- Options for opening aerial in a floating win
		  float = {
			-- Controls border appearance. Passed to nvim_open_win
			border = "rounded",

			-- Determines location of floating window
			--   cursor - Opens float on top of the cursor
			--   editor - Opens float centered in the editor
			--   win    - Opens float centered in the window
			relative = "cursor",

			-- These control the height of the floating window.
			-- They can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
			-- min_height and max_height can be a list of mixed types.
			-- min_height = {8, 0.1} means "the greater of 8 rows or 10% of total"
			max_height = 0.9,
			height = nil,
			min_height = { 8, 0.1 },

			override = function(conf, source_winid)
			  -- This is the config that will be passed to nvim_open_win.
			  -- Change values here to customize the layout
			  return conf
			end,
		  },

		  lsp = {
			-- Fetch document symbols when LSP diagnostics update.
			-- If false, will update on buffer changes.
			diagnostics_trigger_update = true,

			-- Set to false to not update the symbols when there are LSP errors
			update_when_errors = true,

			-- How long to wait (in ms) after a buffer change before updating
			-- Only used when diagnostics_trigger_update = false
			update_delay = 300,

			-- Map of LSP client name to priority. Default value is 10.
			-- Clients with higher (larger) priority will be used before those with lower priority.
			-- Set to -1 to never use the client.
			priority = {
			  -- pyright = 10,
			},
		  },

		  treesitter = {
			-- How long to wait (in ms) after a buffer change before updating
			update_delay = 300,
		  },

		  markdown = {
			-- How long to wait (in ms) after a buffer change before updating
			update_delay = 300,
		  },

		  man = {
			-- How long to wait (in ms) after a buffer change before updating
			update_delay = 300,
		  },
		})
	end
return config
