local M = {}
function M.config()
	require("mason").setup({
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗"
			}
		},
	})

	require("mason-lspconfig").setup({
		ensure_installed = { "sumneko_lua", "clangd", "vimls" }
	})
end

return M
