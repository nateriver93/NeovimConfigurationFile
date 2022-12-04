local M = {}
function M.config()
	local impatient = require("impatient")

	impatient.enable_profile()

	require("filetype").setup({})
end

return M
