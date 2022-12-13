local config = {}
function config.impatient()
	local impatient = require("impatient")

	impatient.enable_profile()

	require("filetype").setup({})
end

return config
