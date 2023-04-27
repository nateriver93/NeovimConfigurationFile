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
			["p"] = ")",
			["b"] = "}",
			["s"] = "]",
			["q"] = { '"', "'", "`" },
			["o"] = { "}", "]", ")", ">", '"', "'", "`" },
		},

	}
end
return config
