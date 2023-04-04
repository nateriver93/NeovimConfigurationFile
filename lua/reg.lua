local config = {}

function config.registers_nvim()
	local registers = require("registers")
	registers.setup({
		bind_keys =
		{
			["<C-o>"] = registers.apply_register(),
		}
	})
end

return config
