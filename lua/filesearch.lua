local config = {}
function config.yanky()
	require('yanky').setup
	{
	  ring = {
		history_length = 100,
		storage = "shada",
		sync_with_numbered_registers = true,
		cancel_event = "update",
	  },
	  picker = {
		select = {
		  action = nil, -- nil to use default put action
		},
		telescope = {
		  mappings = nil, -- nil to use default mappings
		},
	  },
	  system_clipboard = {
		sync_with_ring = true,
	  },
	  highlight = {
		on_put = true,
		on_yank = true,
		timer = 500,
	  },
	  preserve_cursor_position = {
		enabled = true,
	  },
	}
end

function config.telescope()
	require('telescope').setup{
		defaults = {
			file_ignore_patterns = {"%.map", "%.obj", "%.o", "%.pbi", "%.html", "%.7z", "%.zip", "%.sln", "%.eww", "%.ewp", "%.command", "%.vcproj", "%.dep", "%.s", "%.lst", "%.pbw"},

			mappings = {
			  i = {
			  },

			  n = {
				["o"] = require('telescope.actions').select_default,
			  },
		  }
		},

		pickers = {
			find_files = {
				-- theme = "ivy",
				find_command = {"fd"},
				previewer = false,
				hidden = true
			},

			oldfiles = {
				-- theme = "ivy",
				find_command = {"fd"},
				previewer = false,
				hidden = true,
			},

			buffers = {
				-- theme = "ivy",
				find_command = {"fd"},
				previewer = false,
				hidden = true,
			},

			grep_string = {
				-- theme = "ivy",
				find_command = {"rg"},
				hidden = true,
			},

			live_grep = {
				-- theme = "ivy",
				find_command = {"rg"},
				hidden = true,
			}
		},

		extensions = {
			-- ui_select = {
			-- 	-- theme = "ivy",
			-- 	find_command = {"fd"},
			-- },

			file_browser = {
				-- theme = "ivy",
				-- disables netrw and use telescope-file-browser in its place
				hijack_netrw = true,
				hidden = true,
				files = false,
				previewer = false,
				mappings = {
				-- ["i"] = {
				--   -- your custom insert mode mappings
				-- },
				-- ["n"] = {
				--   -- your custom normal mode mappings
				-- },
				},
			},

			fzf = {
			  fuzzy = true,                    -- false will only do exact matching
			  override_generic_sorter = true,  -- override the generic sorter
			  override_file_sorter = true,     -- override the file sorter
			  case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
											   -- the default case_mode is "smart_case"
			},

			aerial = {
				-- Display symbols as <root>.<parent>.<symbol>
				show_nesting = {
					['_'] = false, -- This key will be the default
					json = true,   -- You can set the option for specific filetypes
					yaml = true,
				}
			},
		}
	}
	--
	-- require("telescope").load_extension("ui-select")
	require("telescope").load_extension "file_browser"
	require("telescope").load_extension("yank_history")
	require('telescope').load_extension("fzf")
	require('telescope').load_extension('aerial')
	-- require('telescope').load_extension('projects')
end

function config.trouble()
	require("trouble").setup
	{
		position = "bottom", -- position of the list can be: bottom, top, left, right
		height = 15, -- height of the trouble list when position is top or bottom
		width = 50, -- width of the list when position is left or right
		icons = true, -- use devicons for filenames
		mode = "workspace_diagnostics", -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist"
		fold_open = "", -- icon used for open folds
		fold_closed = "", -- icon used for closed folds
		group = true, -- group results by file
		padding = true, -- add an extra new line on top of the list
		action_keys = { -- key mappings for actions in the trouble list
			-- map to {} to remove a mapping, for example:
			-- close = {},
			close = "q", -- close the list
			cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
			refresh = "r", -- manually refresh
			jump = {"<cr>", "<tab>"}, -- jump to the diagnostic or open / close folds
			open_split = { "<c-x>" }, -- open buffer in new split
			open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
			open_tab = { "<c-t>" }, -- open buffer in new tab
			jump_close = {"o"}, -- jump to the diagnostic and close the list
			toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
			toggle_preview = "P", -- toggle auto_preview
			hover = "K", -- opens a small popup with the full multiline message
			preview = "p", -- preview the diagnostic location
			close_folds = {"zM", "zm"}, -- close all folds
			open_folds = {"zR", "zr"}, -- open all folds
			toggle_fold = {"zA", "za"}, -- toggle fold of current file
			previous = "k", -- previous item
			next = "j" -- next item
		},
		indent_lines = true, -- add an indent guide below the fold icons
		auto_open = false, -- automatically open the list when you have diagnostics
		auto_close = false, -- automatically close the list when you have no diagnostics
		auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
		auto_fold = false, -- automatically fold a file trouble list at creation
		auto_jump = {"lsp_definitions"}, -- for the given modes, automatically jump if there is only a single result
		signs = {
			-- icons / text used for a diagnostic
			error = "",
			warning = "",
			hint = "",
			information = "",
			other = "﫠"
	},
		use_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
	}
end

function config.dressing()
	require('dressing').setup({
	  input = {
		-- Set to false to disable the vim.ui.input implementation
		enabled = true,

		-- Default prompt string
		default_prompt = "Input:",

		-- Can be 'left', 'right', or 'center'
		prompt_align = "left",

		-- When true, <Esc> will close the modal
		insert_only = true,

		-- When true, input will start in insert mode.
		start_in_insert = true,

		-- These are passed to nvim_open_win
		anchor = "SW",
		border = "rounded",
		-- 'editor' and 'win' will default to being centered
		relative = "cursor",

		-- These can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
		prefer_width = 40,
		width = nil,
		-- min_width and max_width can be a list of mixed types.
		-- min_width = {20, 0.2} means "the greater of 20 columns or 20% of total"
		max_width = { 140, 0.9 },
		min_width = { 20, 0.2 },

		buf_options = {},
		win_options = {
		  -- Window transparency (0-100)
		  winblend = 10,
		  -- Disable line wrapping
		  wrap = false,
		},

		-- Set to `false` to disable
		mappings = {
		  n = {
			["<Esc>"] = "Close",
			["<CR>"] = "Confirm",
		  },
		  i = {
			["<C-c>"] = "Close",
			["<CR>"] = "Confirm",
			["<Up>"] = "HistoryPrev",
			["<Down>"] = "HistoryNext",
		  },
		},

		override = function(conf)
		  -- This is the config that will be passed to nvim_open_win.
		  -- Change values here to customize the layout
		  return conf
		end,

		-- see :help dressing_get_config
		get_config = nil,
	  },
	})
end

return config
