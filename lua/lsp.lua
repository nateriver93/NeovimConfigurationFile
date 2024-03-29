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
			ensure_installed = { "lua_ls", "clangd", "vimls" },
			--
			automatic_installation = false,
		})
	end

	function config.lspkind_nvim()
		require('lspkind').init({
			-- DEPRECATED (use mode instead): enables text annotations
			--
			-- default: true
			-- with_text = true,

			-- defines how annotations are shown
			-- default: symbol
			-- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
			mode = 'symbol_text',

			-- default symbol map
			-- can be either 'default' (requires nerd-fonts font) or
			-- 'codicons' for codicon preset (requires vscode-codicons font)
			--
			-- default: 'default'
			preset = 'codicons',

			-- override preset symbols
			--
			-- default: {}
			symbol_map = {
				Class = "",              -- nf-mdi-language_php (Nerd Font icon)
				Method = "ƒ",             -- nf-custom-function (Nerd Font icon)
				Function = "λ",           -- nf-fa_lambda (Nerd Font icon)
				Constructor = "",        -- nf-mdi-code_braces (Nerd Font icon)
				Variable = "",           -- nf-dev-variable (Nerd Font icon)
				Module = "",             -- nf-fae-modx (Nerd Font icon)
				Namespace = "",          -- nf-mdi-xml (Nerd Font icon)
				Package = "",            -- nf-oct-package (Nerd Font icon)
				Interface = "",          -- nf-fa_ethernet (Nerd Font icon)
				Property = "",           -- nf-custom-property (Nerd Font icon)
				Unit = "",               -- nf-fa_cube (Nerd Font icon)
				Value = "",              -- nf-fa_money (Nerd Font icon)
				Enum = "",               -- nf-mdi-crown (Nerd Font icon)
				Keyword = "",            -- nf-mdi-language_javascript (Nerd Font icon)
				Snippet = "﬌",            -- nf-oct-gist (Nerd Font icon)
				Color = "",              -- nf-mdi-palette (Nerd Font icon)
				File = "",               -- nf-fa_file_code_o (Nerd Font icon)
				Reference = "",          -- nf-fa_bookmark_o (Nerd Font icon)
				Folder = "",             -- nf-mdi-folder_outline (Nerd Font icon)
				EnumMember = "",         -- nf-fa_list (Nerd Font icon)
				Constant = "",           -- nf-mdi-numeric (Nerd Font icon)
				Struct = "",             -- nf-fa_object_group (Nerd Font icon)
				Event = "",              -- nf-fa_bolt (Nerd Font icon)
				Operator = "",           -- nf-fa_calculator (Nerd Font icon)
				TypeParameter = "",      -- nf-mdi_format_letter_case_upper (Nerd Font icon)
				Field = "",              -- nf-oct-field (Nerd Font icon)
				String = "𝓢",             -- nf-fa_font (Nerd Font icon)
				Number = "#",             -- nf-custom-number (Nerd Font icon)
				Boolean = "⊨",            -- nf-custom-boolean (Nerd Font icon)
				Array = "",              -- nf-fa_th (Nerd Font icon)
				Object = "",             -- nf-mdi-database (Nerd Font icon)
				Key = "🔑",                -- nf-oct-key (Nerd Font icon)
				Null = "NULL",            -- text representation
			},
		})
	end

	function config.nvim_cmp()

		local cmp = require('cmp')

		local lspkind = require('lspkind')

		cmp.setup({
			snippet = {
				expand = function(args)
					vim.fn["vsnip#anonymous"](args.body) -- 使用 vim-vsnip 扩展代码片段
				end,
			},

			mapping = {
				['<C-k>'] = cmp.mapping.select_prev_item(),
				['<C-j>'] = cmp.mapping.select_next_item(),
				-- ['<C-d>'] = cmp.mapping.scroll_docs(-4),
				-- ['<C-u>'] = cmp.mapping.scroll_docs(4),
				-- ['<C-Space>'] = cmp.mapping.complete(),
				-- ['<C-e>'] = cmp.mapping.close(),
				['<C-o>'] = cmp.mapping.confirm({
					behavior = cmp.ConfirmBehavior.Replace,
					select = true,
				}),
			},

			sources = {
				{ name = 'nvim_lsp' },
				{ name = 'buffer' },
				{ name = 'path' },
				{ name = 'cmdline' },
				{ name = 'calc' },
				{ name = 'vsnip' },
				-- 添加其他 cmp 插件
			},
			--
			-- 使用lspkind-nvim显示类型图标
			formatting = {
				format = lspkind.cmp_format({
					with_text = true, -- do not show text alongside icons
					maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
					before = function (entry, vim_item)
						-- Source 显示提示来源
						vim_item.menu = "["..string.upper(entry.source.name).."]"
						return vim_item
					end
				})
			},

			event = {
				on_selected_item = function(_, item, _)
					if item ~= nil and item.documentation ~= nil then
						vim.lsp.util.open_floating_preview(item.documentation)
					end
				end
			},
		})

		 -- Use buffer source for `/`.
		 cmp.setup.cmdline('/', {
		   sources = {
			{ name = 'buffer' }
		   }
		 })

		 -- Use cmdline & path source for ':'.
		 cmp.setup.cmdline(':', {
		   sources = cmp.config.sources({
			{ name = 'path' }
		   }, {
			  { name = 'cmdline' }
			})
		 })
	end

	function config.lspconfig()

		local lspconfig = require("lspconfig")

		local capabilities = require('cmp_nvim_lsp').default_capabilities()

		local function on_attach_callback(client, bufnr)

		end

		lspconfig.lua_ls.setup {
			on_attach = on_attach_callback,
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

		lspconfig.clangd.setup{
			on_attach = on_attach_callback,
			capabilities = capabilities,
			cmd = {
				"clangd",
				"--background-index",
				"--suggest-missing-includes",
				"--clang-tidy",
				"--header-insertion=iwyu",
			},
		}

		lspconfig.vimls.setup{
			on_attach = on_attach_callback,
			capabilities = capabilities,
		}
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
			["<ESC>"] = "actions.close",
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
			icons = {
			},
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
