local M = {}
function M.config()
	require('telescope').setup{
		pickers = {
			find_files = {
				theme = "ivy",
				find_command = {"fd"},
			},

			oldfiles = {
				theme = "ivy",
			},

			buffers = {
				theme = "ivy",
			},
		},

		extensions = {
			["ui-select"] = {
				require("telescope.themes").get_ivy {
				-- even more opts
				}
			},

			file_browser = {
			  theme = "ivy",
			  -- disables netrw and use telescope-file-browser in its place
			  hijack_netrw = true,
			  mappings = {
				["i"] = {
				  -- your custom insert mode mappings
				},
				["n"] = {
				  -- your custom normal mode mappings
				},
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

return M
