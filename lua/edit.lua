local config = {}
function config.nvim_surround()
	require('nvim-surround').setup
	{
		keymaps = {
			visual = "ss",
			delete = "sd",
			change = "sc",
		},

		aliases = {
			["a"] = ">",
			["b"] = ")",
			["B"] = "}",
			["r"] = "]",
			["q"] = { '"', "'", "`" },
			["s"] = { "}", "]", ")", ">", '"', "'", "`" },
		},
	}
	-- Test the nvim-surround (plugin)
end
return config
