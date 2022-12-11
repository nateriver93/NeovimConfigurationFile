local config = {}
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

return config
