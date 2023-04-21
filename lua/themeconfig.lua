local config = {}

function config.nightfox()
	require('nightfox').setup({
	  options = {
		-- Compiled file's destination location
		compile_path = vim.fn.stdpath("cache") .. "/nightfox",
		compile_file_suffix = "_compiled", -- Compiled file suffix
		transparent = false,    -- Disable setting background
		terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
		dim_inactive = false,   -- Non focused panes set to alternative background
		module_default = true,  -- Default enable value for modules
		styles = {              -- Style to be applied to different syntax groups
		  comments = "NONE",    -- Value is any valid attr-list value `:help attr-list`
		  conditionals = "NONE",
		  constants = "NONE",
		  functions = "NONE",
		  keywords = "NONE",
		  numbers = "NONE",
		  operators = "NONE",
		  strings = "NONE",
		  types = "NONE",
		  variables = "NONE",
		},

		inverse = {             -- Inverse highlight for different types
		  match_paren = false,
		  visual = false,
		  search = false,
		},

		modules = {             -- List of various plugins and additional options
		  -- ...
		},
	  },

	  palettes = {},
	  specs = {},
	  groups = {},
	})
end

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
	-- vim.opt.listchars:append "space:⋅"
	vim.opt.listchars:append "eol:↴"

	require("indent_blankline").setup {
		space_char_blankline = " ",
		show_current_context = true,
		show_current_context_start = true,
	}
end

return config
