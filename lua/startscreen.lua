local M = {}
function M.config()
	local alpha = require'alpha'
	local dashboard = require'alpha.themes.dashboard'
	dashboard.section.header.val = {
		[[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
		[[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
		[[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
		[[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
		[[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
		[[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
	}
	dashboard.section.buttons.val = {
	 dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
	 dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
	 dashboard.button( "m", "  Open config" , ":cd C:\\Users\\su-25\\AppData\\Local\\nvim<CR> :NvimTreeOpen<CR>"),
	 dashboard.button( "p", "  Open project" , ":cd C:\\Users\\su-25\\Project<CR> :NvimTreeOpen<CR>"),
	}
	local handle = io.popen('fortune')
	local fortune = handle:read("*a")
	handle:close()
	dashboard.section.footer.val = fortune

	dashboard.config.opts.noautocmd = true

	vim.cmd[[autocmd User AlphaReady echo 'ready']]

	alpha.setup(dashboard.config)
--	require'alpha'.setup(require'alpha.themes.startify'.config)
end

return M
