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
		pickers = {
			find_files = {
				theme = "ivy",
				find_command = {"fd"},
				previewer = false,
				hidden = true
			},

			oldfiles = {
				theme = "ivy",
				find_command = {"fd"},
				previewer = false,
				hidden = true,
			},

			buffers = {
				theme = "ivy",
				find_command = {"fd"},
				previewer = false,
				hidden = true,
			},

			grep_string = {
				theme = "ivy",
				find_command = {"rg"},
				hidden = true,
			},

			live_grep = {
				theme = "ivy",
				find_command = {"rg"},
				hidden = true,
			}
		},

		extensions = {
			ui_select = {
				theme = "ivy",
				find_command = {"fd"},
			},

			file_browser = {
				theme = "ivy",
				find_command = {"fd"},
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

			-- fzf = {
			--   fuzzy = true,                    -- false will only do exact matching
			--   override_generic_sorter = true,  -- override the generic sorter
			--   override_file_sorter = true,     -- override the file sorter
			--   case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
			-- 								   -- the default case_mode is "smart_case"
			-- },
		}
	}
	--
	require("telescope").load_extension("ui-select")
	require("telescope").load_extension("file_browser")
	-- require('telescope').load_extension("fzf")
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

return config
