local config = {}
function config.nvim_treesitter()
	-- nvim-treesitter config
	require 'nvim-treesitter.configs'.setup {
		-- ensure_installed = "maintained", -- for installing all maintained parsers
		ensure_installed = { "c", "cpp", "vim", "lua", "help" }, -- for installing specific parsers
		sync_install = true, -- install synchronously
		ignore_install = {}, -- parsers to not install
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false, -- disable standard vim highlighting
		},
		indent = {
			enable = true, -- 启用基于树状结构的缩进
		},
		-- 启用基于树状结构的折叠
		fold = {
			enable = true,
			disable = {}
		},
	}
end

function config.vim_illuminate()

	require('illuminate').freeze_buf()

	require('illuminate').unfreeze_buf()
end

return config
