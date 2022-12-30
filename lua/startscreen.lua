local config = {}
function config.alpha()
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
	 dashboard.button( "<leader> s l", "  Load Session" , ":SessionManager load_session<CR>"),
	 dashboard.button( "<leader> f b", "  Folder Browser" , ":Telescope file_browser<CR>"),
	 dashboard.button( "<leader> f f", "  Search Files" , ":Telescope find_files<CR>"),
	 dashboard.button( "<leader> f o", "  Recent Opened Files" , ":Telescope oldfiles<CR>"),

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

return config
