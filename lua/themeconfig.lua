local config = {}
function config.github_theme()
	require("github-theme").setup({
	  theme_style = "dark",
	  function_style = "italic",
	  sidebars = {"qf", "vista_kind", "terminal", "packer"},

	  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
	  colors = {hint = "orange", error = "#ff0000"},

	  -- Overwrite the highlight groups
	  overrides = function(c)
		return {
		  htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
		  DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
		  -- this will remove the highlight groups
		  TSField = {},
		}
	  end
	})

	require'nvim-web-devicons'.setup {
	 -- your personnal icons can go here (to override)
	 -- you can specify color or cterm_color instead of specifying both of them
	 -- DevIcon will be appended to `name`
	 override = {
	  zsh = {
		icon = "",
		color = "#428850",
		cterm_color = "65",
		name = "Zsh"
	  }
	 };
	 -- globally enable different highlight colors per icon (default to true)
	 -- if set to false all icons will have the default icon's color
	 color_icons = true;
	 -- globally enable default icons (default to false)
	 -- will get overriden by `get_icons` option
	 default = true;
	}
end

function config.indent_blankline()
	vim.opt.list = true
	vim.opt.listchars:append "space:⋅"
	vim.opt.listchars:append "eol:↴"

	require("indent_blankline").setup {
		space_char_blankline = " ",
		show_current_context = true,
		show_current_context_start = true,
	}
end

return config
