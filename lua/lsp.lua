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
	-- Mappings.
	-- See `:help vim.diagnostic.*` for documentation on any of the below functions
	local opts = { noremap=true, silent=true }
	vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
	vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
	vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
	vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

	-- Use an on_attach function to only map the following keys
	-- after the language server attaches to the current buffer
	local on_attach = function(client, bufnr)
	  -- Enable completion triggered by <c-x><c-o>
	  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

	  -- Mappings.
	  -- See `:help vim.lsp.*` for documentation on any of the below functions
	  local bufopts = { noremap=true, silent=true, buffer=bufnr }
	  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
	  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
	  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
	  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
	  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
	  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
	  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
	  vim.keymap.set('n', '<space>wl', function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	  end, bufopts)
	  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
	  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
	  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
	  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
	  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
	end

	local lsp_flags = {
	  -- This is the default in Nvim 0.7+
	  debounce_text_changes = 150,
	}
	--
	-- Setup lspconfig.
	local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

	-- start server
	local lspconfig = require("lspconfig")

	lspconfig.sumneko_lua.setup {
	  on_attach = on_attach,
	  flags = lsp_flags,
	  capabilities = capabilities,
	  settings = {
		Lua = {
		  runtime = {
			version = 'LuaJIT',
		  },
		  diagnostics = {
			globals = {"vim", "packer_bootstrap"},
		  },
		  workspace = {
			library = vim.api.nvim_get_runtime_file("", true),
		  },
		  telemetry = {
			enable = false,
		  },
		},
	  },
	}

	require('lspconfig')['clangd'].setup{
		on_attach = on_attach,
		flags = lsp_flags,
	    capabilities = capabilities,
	}

	require('lspconfig')['vimls'].setup{
		on_attach = on_attach,
		flags = lsp_flags,
	    capabilities = capabilities,
	}

	local keymap = vim.keymap.set
	local saga = require('lspsaga')

	saga.init_lsp_saga()

	-- Lsp finder find the symbol definition implement reference
	-- if there is no implement it will hide
	-- when you use action in finder like open vsplit then you can
	-- use <C-t> to jump back
	keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })

	-- Code action
	keymap({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })

	-- Rename
	keymap("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true })

	-- Peek Definition
	-- you can edit the definition file in this flaotwindow
	-- also support open/vsplit/etc operation check definition_action_keys
	-- support tagstack C-t jump back
	keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })

	-- Show line diagnostics
	keymap("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })

	-- Show cursor diagnostic
	keymap("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })

	-- Diagnsotic jump can use `<c-o>` to jump back
	keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
	keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })

	-- Only jump to error
	keymap("n", "[E", function()
	  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
	end, { silent = true })
	keymap("n", "]E", function()
	  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
	end, { silent = true })

	-- Outline
	keymap("n","<leader>o", "<cmd>LSoutlineToggle<CR>",{ silent = true })

	-- Hover Doc
	keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

	-- Float terminal
	keymap("n", "<A-d>", "<cmd>Lspsaga open_floaterm<CR>", { silent = true })
	-- if you want pass somc cli command into terminal you can do like this
	-- open lazygit in lspsaga float terminal
	keymap("n", "<A-d>", "<cmd>Lspsaga open_floaterm lazygit<CR>", { silent = true })
	-- close floaterm
	keymap("t", "<A-d>", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], { silent = true })
end

return M
