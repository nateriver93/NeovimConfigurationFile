local config = {}
function config.nvim_surround()
	require('nvim-surround').setup
	{
		keymaps = {
			insert = "<A-s>",
			normal = "sn",
			visual = "sv",
			delete = "sd",
			change = "sc",
		},

		aliases = {
			["a"] = ">",
			["p"] = ")",
			["b"] = "}",
			["s"] = "]",
			["q"] = { '"', "'", "`" },
			["o"] = { "}", "]", ")", ">", '"', "'", "`" },
		},
	}
	-- ((Test) the nvim-surround) (plugin)
end
return config
