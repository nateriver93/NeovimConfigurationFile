-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\NATERI~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\NATERI~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\NATERI~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\NATERI~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\NATERI~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["alpha-nvim"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["github-nvim-theme"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\github-nvim-theme",
    url = "https://github.com/projekt0n/github-nvim-theme"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n�\a\0\0\6\0\26\0!6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\r\0005\5\f\0=\5\14\0045\5\15\0=\5\16\4=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0034\4\0\0=\4\24\0034\4\0\0=\4\25\3B\1\2\0019\1\2\0B\1\1\1K\0\1\0\24server_filetype_map\16custom_kind\17show_outline\1\0\b\rwin_with\5\17auto_refresh\2\17win_position\nright\rjump_key\6o\14virt_text\b┃\17auto_preview\1\15auto_enter\2\14win_width\3<\27definition_action_keys\1\0\5\vvsplit\v<C-c>v\nsplit\v<C-c>i\tedit\v<C-c>o\tquit\6q\ttabe\v<C-c>t\21code_action_keys\1\0\2\tquit\6q\texec\t<CR>\23finder_action_keys\tquit\1\3\0\0\6q\n<ESC>\topen\1\0\3\vvsplit\6s\nsplit\6i\ttabe\6t\1\3\0\0\6o\t<CR>\17finder_icons\1\0\3\tlink\n  \bref\t諭 \bdef\n  \26code_action_lightbulb\1\0\a\venable\2\18sign_priority\3\20\tsign\2\22cache_code_action\2\21enable_in_insert\2\16update_time\3�\1\17virtual_text\2\22diagnostic_header\1\5\0\0\t \t \t \tﴞ \17move_in_saga\1\0\2\tprev\n<C-p>\tnext\n<C-n>\1\0\t\17border_style\frounded\18saga_winblend\3\0\27finder_request_timeout\3�\v\29code_action_num_shortcut\2\21code_action_icon\t💡\22max_preview_lines\3\n\24preview_lines_above\3\0\21rename_in_select\2\23rename_action_quit\n<C-c>\18init_lsp_saga\flspsaga\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\nz\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\0\1\4\0\0\16sumneko_lua\vclangd\nvimls\nsetup\20mason-lspconfig\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\aui\1\0\0\nicons\1\0\0\1\0\3\22package_installed\b✓\24package_uninstalled\b✗\20package_pending\b➜\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neovim-session-manager"] = {
    after = { "telescope.nvim" },
    commands = { "SessionManager" },
    config = { "\27LJ\2\n�\3\0\0\n\0\20\0 6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\n\0\18\6\0\0009\4\4\0006\a\5\0009\a\6\a9\a\a\a'\t\b\0B\a\2\2'\b\t\0B\4\4\2=\4\v\0036\4\0\0'\6\f\0B\4\2\0029\4\r\0049\4\14\4=\4\15\0034\4\0\0=\4\16\0035\4\17\0=\4\18\0034\4\0\0=\4\19\3B\1\2\1K\0\1\0\29autosave_ignore_buftypes\30autosave_ignore_filetypes\1\2\0\0\14gitcommit\25autosave_ignore_dirs\18autoload_mode\rDisabled\17AutoloadMode\27session_manager.config\17sessions_dir\1\0\6\29autosave_only_in_session\1\18path_replacer\a__\31autosave_ignore_not_normal\2\26autosave_last_session\2\20max_path_length\3P\19colon_replacer\a++\rsessions\tdata\fstdpath\afn\bvim\bnew\nsetup\20session_manager\17plenary.path\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17nvim_comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nc\0\2\a\0\5\0\b6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\1K\0\1\0\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim�\4\1\0\14\0&\0@3\0\0\0005\1\1\0006\2\2\0'\4\3\0B\2\2\0029\2\4\0026\4\5\0009\4\6\0049\4\a\0049\4\b\4B\4\1\0A\2\0\0026\3\2\0'\5\t\0B\3\2\0029\4\n\0039\4\v\0045\6\f\0=\0\r\6=\1\14\6=\2\15\0065\a\31\0005\b\17\0005\t\16\0=\t\18\b5\t\20\0005\n\19\0=\n\21\t=\t\22\b5\t\26\0006\n\5\0009\n\23\n9\n\24\n'\f\25\0+\r\2\0B\n\3\2=\n\27\t=\t\28\b5\t\29\0=\t\30\b=\b \a=\a!\6B\4\2\0016\4\2\0'\6\t\0B\4\2\0029\4\"\0049\4\v\0045\6#\0=\0\r\6=\1\14\6=\2\15\6B\4\2\0016\4\2\0'\6\t\0B\4\2\0029\4$\0049\4\v\0045\6%\0=\0\r\6=\1\14\6=\2\15\6B\4\2\1K\0\1\0\1\0\0\nvimls\1\0\0\vclangd\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\3\0\0\bvim\21packer_bootstrap\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\17capabilities\nflags\14on_attach\1\0\0\nsetup\16sumneko_lua\14lspconfig\29make_client_capabilities\rprotocol\blsp\bvim\25default_capabilities\17cmp_nvim_lsp\frequire\1\0\1\26debounce_text_changes\3�\1\0\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n�\22\0\0\b\0W\0m6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0024\3\0\0=\3\5\0025\3\6\0005\4\a\0004\5\5\0005\6\b\0>\6\1\0055\6\n\0005\a\t\0=\a\v\6>\6\2\0055\6\f\0>\6\3\0055\6\14\0005\a\r\0=\a\v\6>\6\4\5=\5\15\4=\4\16\0035\4\17\0005\5\18\0=\5\19\4=\4\20\3=\3\21\0025\3\22\0005\4\23\0005\5\24\0=\5\25\4=\4\26\0035\4\27\0005\5\28\0=\5\29\0045\5\30\0005\6\31\0=\6 \0055\6!\0=\6\"\5=\5#\4=\4\25\0035\4$\0=\4%\3=\3&\0025\3'\0=\3(\0025\3)\0004\4\0\0=\4*\3=\3+\0024\3\0\0=\3,\0025\3-\0004\4\0\0=\4.\3=\3/\0025\0030\0005\0041\0=\4\25\3=\0032\0025\0033\0004\4\0\0=\0044\0035\0045\0=\0046\3=\0037\0025\0038\0=\0039\0025\3:\0=\3\"\0025\3;\0005\4<\0=\4=\0035\4>\0004\5\0\0=\0056\4=\4?\0035\4A\0005\5@\0=\5\19\4=\4B\0035\4C\0005\5D\0005\6F\0005\aE\0=\aG\0065\aH\0=\aI\6=\0066\5=\5J\4=\4K\0035\4L\0=\4M\3=\3N\0025\3O\0=\3P\0025\3Q\0=\3R\0025\3S\0005\4T\0=\4U\3=\3V\2B\0\2\1K\0\1\0\blog\ntypes\1\0\b\bdev\1\fprofile\1\vconfig\1\bgit\1\16diagnostics\1\fwatcher\1\15copy_paste\1\ball\1\1\0\2\rtruncate\1\venable\1\16live_filter\1\0\2\vprefix\15[FILTER]: \24always_show_folders\2\ntrash\1\0\2\bcmd\14gio trash\20require_confirm\2\factions\16remove_file\1\0\1\17close_window\2\14open_file\18window_picker\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\venable\2\1\0\2\18resize_window\2\17quit_on_open\1\15file_popup\1\0\0\1\0\5\bcol\3\1\brow\3\1\vborder\vshadow\nstyle\fminimal\rrelative\vcursor\15expand_all\1\0\1\25max_folder_discovery\3�\2\15change_dir\1\0\3\vglobal\1\23restrict_above_cwd\1\venable\2\1\0\1\25use_system_clipboard\2\1\0\4\venable\2\17show_on_dirs\2\ftimeout\3�\3\vignore\2\24filesystem_watchers\1\0\2\venable\2\19debounce_delay\0032\ffilters\fexclude\1\4\0\0\t.map\t.dll\a.o\vcustom\1\0\1\rdotfiles\1\16diagnostics\1\0\4\thint\b\fwarning\b\tinfo\b\nerror\b\1\0\3\venable\1\17show_on_dirs\1\19debounce_delay\0032\16system_open\targs\1\0\1\bcmd\5\23ignore_ft_on_setup\24update_focused_file\16ignore_list\1\0\2\venable\1\16update_root\1\23hijack_directories\1\0\2\venable\2\14auto_open\2\rrenderer\18special_files\1\5\0\0\15Cargo.toml\rMakefile\14README.md\14readme.md\vglyphs\bgit\1\0\a\vstaged\b✓\runstaged\b✗\fignored\b◌\fdeleted\b\frenamed\b➜\14untracked\b★\runmerged\b\vfolder\1\0\b\topen\b\fdefault\b\15arrow_open\b\nempty\b\17arrow_closed\b\15empty_open\b\fsymlink\b\17symlink_open\b\1\0\3\fsymlink\b\fdefault\b\rbookmark\b\tshow\1\0\4\17folder_arrow\2\vfolder\2\tfile\2\bgit\2\1\0\4\18symlink_arrow\n ➛ \fpadding\6 \18git_placement\vbefore\18webdev_colors\2\19indent_markers\nicons\1\0\5\tedge\b│\titem\b│\vcorner\b└\tnone\6 \vbottom\b─\1\0\2\18inline_arrows\2\venable\1\1\0\b\24symlink_destination\2\17indent_width\3\2\25root_folder_modifier\a:~\27highlight_opened_files\tnone\14full_name\1\18highlight_git\1\16group_empty\1\17add_trailing\1\tview\nfloat\20open_win_config\1\0\6\brow\3\1\bcol\3\1\vheight\3\30\nwidth\3\30\vborder\frounded\rrelative\veditor\1\0\1\venable\1\rmappings\tlist\1\0\2\vaction\15close_node\tmode\6n\1\2\0\0\6h\1\0\2\bkey\t<BS>\vaction\5\bkey\1\0\2\vaction\tedit\tmode\6n\1\2\0\0\6l\1\0\2\bkey\6o\vaction\5\1\0\1\16custom_only\1\1\0\t\nwidth\3\30\vnumber\1\15signcolumn\byes\19relativenumber\1 preserve_window_proportions\1\tside\tleft\21hide_root_folder\1\25centralize_selection\1\18adaptive_size\1\14root_dirs\29ignore_buf_on_tab_change\1\0\19\19remove_keymaps\1\14on_attach\fdisable\20respect_buf_cwd\1\23reload_on_bufenter\1\23sync_root_with_cwd\2\24prefer_startup_root\1\fsort_by\tname\25focus_empty_on_setup\1\16open_on_tab\1\23open_on_setup_file\1\18open_on_setup\1\27ignore_buffer_on_setup\1'hijack_unnamed_buffer_when_opening\1\17hijack_netrw\2\18hijack_cursor\1\18disable_netrw\1\28create_in_closed_folder\1\25auto_reload_on_write\2\19select_prompts\1\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0024\3\0\0=\3\6\0025\3\a\0=\3\b\2B\0\2\1K\0\1\0\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\19ignore_install\21ensure_installed\1\0\1\17sync_install\2\1\6\0\0\6c\bcpp\bvim\blua\thelp\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.vim"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\onedark.vim",
    url = "https://github.com/joshdick/onedark.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    after = { "telescope-file-browser.nvim", "telescope-ui-select.nvim" },
    commands = { "Telescope" },
    config = { "\27LJ\2\n�\4\0\0\6\0!\00056\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\20\0005\3\6\0005\4\3\0005\5\4\0=\5\5\4=\4\a\0035\4\b\0005\5\t\0=\5\5\4=\4\n\0035\4\v\0005\5\f\0=\5\5\4=\4\r\0035\4\14\0005\5\15\0=\5\5\4=\4\16\0035\4\17\0005\5\18\0=\5\5\4=\4\19\3=\3\21\0025\3\24\0005\4\22\0005\5\23\0=\5\5\4=\4\25\0035\4\26\0005\5\27\0=\5\5\0044\5\0\0=\5\28\4=\4\29\3=\3\30\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\31\0'\2 \0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\31\0'\2\29\0B\0\2\1K\0\1\0\14ui-select\19load_extension\15extensions\17file_browser\rmappings\1\2\0\0\afd\1\0\4\ntheme\bivy\nfiles\1\vhidden\2\14previewer\1\14ui_select\1\0\0\1\2\0\0\afd\1\0\1\ntheme\bivy\fpickers\1\0\0\14live_grep\1\2\0\0\arg\1\0\2\vhidden\2\ntheme\bivy\16grep_string\1\2\0\0\arg\1\0\2\vhidden\2\ntheme\bivy\fbuffers\1\2\0\0\afd\1\0\3\vhidden\2\ntheme\bivy\14previewer\1\roldfiles\1\2\0\0\afd\1\0\3\vhidden\2\ntheme\bivy\14previewer\1\15find_files\1\0\0\17find_command\1\2\0\0\afd\1\0\3\vhidden\2\ntheme\bivy\14previewer\1\nsetup\14telescope\frequire\0" },
    load_after = {
      ["neovim-session-manager"] = true
    },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    commands = { "TodoTelescope" },
    config = { "\27LJ\2\n�\t\0\0\6\0001\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\a\0005\4\4\0005\5\5\0=\5\6\4=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0005\5\14\0=\5\6\4=\4\15\0035\4\16\0005\5\17\0=\5\6\4=\4\18\0035\4\19\0005\5\20\0=\5\6\4=\4\21\0035\4\22\0005\5\23\0=\5\6\4=\4\24\3=\3\25\0025\3\26\0=\3\27\0025\3\28\0004\4\0\0=\4\29\3=\3\30\0025\3 \0005\4\31\0=\4!\0035\4\"\0=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4+\3=\3,\0025\3-\0005\4.\0=\4/\3=\0030\2B\0\2\1K\0\1\0\vsearch\targs\1\6\0\0\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\1\0\2\fcommand\arg\fpattern\18\\b(KEYWORDS):\vcolors\ttest\1\3\0\0\15Identifier\f#FF00FF\fdefault\1\3\0\0\15Identifier\f#7C3AED\thint\1\3\0\0\19DiagnosticHint\f#10B981\tinfo\1\3\0\0\19DiagnosticInfo\f#2563EB\fwarning\1\4\0\0\22DiagnosticWarning\15WarningMsg\f#FBBF24\nerror\1\0\0\1\4\0\0\20DiagnosticError\rErrorMsg\f#DC2626\14highlight\fexclude\1\0\t\nafter\afg\22multiline_pattern\a^.\14multiline\2\22multiline_context\3\n\fpattern\22.*<(KEYWORDS)\\s*:\fkeyword\twide\vbefore\5\17max_line_len\3�\3\18comments_only\2\14gui_style\1\0\2\abg\tBOLD\afg\tNONE\rkeywords\tTEST\1\4\0\0\fTESTING\vPASSED\vFAILED\1\0\2\ticon\t⏲ \ncolor\ttest\tNOTE\1\2\0\0\tINFO\1\0\2\ticon\t \ncolor\thint\tPERF\1\4\0\0\nOPTIM\16PERFORMANCE\rOPTIMIZE\1\0\1\ticon\t \tWARN\1\3\0\0\fWARNING\bXXX\1\0\2\ticon\t \ncolor\fwarning\tHACK\1\0\2\ncolor\fwarning\ticon\t \tTODO\1\0\2\ncolor\tinfo\ticon\t \bFIX\1\0\0\balt\1\5\0\0\nFIXME\bBUG\nFIXIT\nISSUE\1\0\2\ticon\t \ncolor\nerror\1\0\3\19merge_keywords\2\18sign_priority\3\b\nsigns\2\nsetup\18todo-comments\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  undotree = {
    config = { "\27LJ\2\n�\2\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\3B\1\2\1K\0\1\0\fkeymaps\1\0\a\6k\14move_prev\6j\14move_next\t<cr>\17action_enter\6p\18enter_diffbuf\6K\21move_change_prev\6q\tquit\6J\21move_change_next\vwindow\1\0\1\rwinblend\3\30\20ignore_filetype\1\a\0\0\rUndotree\17UndotreeDiff\aqf\20TelescopePrompt\18spectre_panel\17tsplayground\1\0\2\vlayout\16left_bottom\15float_diff\2\nsetup\rundotree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\undotree",
    url = "https://github.com/jiaoshijie/undotree"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^telescope"] = "telescope.nvim",
  ["^undotree"] = "undotree"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\nz\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\0\1\4\0\0\16sumneko_lua\vclangd\nvimls\nsetup\20mason-lspconfig\frequire\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\aui\1\0\0\nicons\1\0\0\1\0\3\22package_installed\b✓\24package_uninstalled\b✗\20package_pending\b➜\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n�\22\0\0\b\0W\0m6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0024\3\0\0=\3\5\0025\3\6\0005\4\a\0004\5\5\0005\6\b\0>\6\1\0055\6\n\0005\a\t\0=\a\v\6>\6\2\0055\6\f\0>\6\3\0055\6\14\0005\a\r\0=\a\v\6>\6\4\5=\5\15\4=\4\16\0035\4\17\0005\5\18\0=\5\19\4=\4\20\3=\3\21\0025\3\22\0005\4\23\0005\5\24\0=\5\25\4=\4\26\0035\4\27\0005\5\28\0=\5\29\0045\5\30\0005\6\31\0=\6 \0055\6!\0=\6\"\5=\5#\4=\4\25\0035\4$\0=\4%\3=\3&\0025\3'\0=\3(\0025\3)\0004\4\0\0=\4*\3=\3+\0024\3\0\0=\3,\0025\3-\0004\4\0\0=\4.\3=\3/\0025\0030\0005\0041\0=\4\25\3=\0032\0025\0033\0004\4\0\0=\0044\0035\0045\0=\0046\3=\0037\0025\0038\0=\0039\0025\3:\0=\3\"\0025\3;\0005\4<\0=\4=\0035\4>\0004\5\0\0=\0056\4=\4?\0035\4A\0005\5@\0=\5\19\4=\4B\0035\4C\0005\5D\0005\6F\0005\aE\0=\aG\0065\aH\0=\aI\6=\0066\5=\5J\4=\4K\0035\4L\0=\4M\3=\3N\0025\3O\0=\3P\0025\3Q\0=\3R\0025\3S\0005\4T\0=\4U\3=\3V\2B\0\2\1K\0\1\0\blog\ntypes\1\0\b\bdev\1\fprofile\1\vconfig\1\bgit\1\16diagnostics\1\fwatcher\1\15copy_paste\1\ball\1\1\0\2\rtruncate\1\venable\1\16live_filter\1\0\2\vprefix\15[FILTER]: \24always_show_folders\2\ntrash\1\0\2\bcmd\14gio trash\20require_confirm\2\factions\16remove_file\1\0\1\17close_window\2\14open_file\18window_picker\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\venable\2\1\0\2\18resize_window\2\17quit_on_open\1\15file_popup\1\0\0\1\0\5\bcol\3\1\brow\3\1\vborder\vshadow\nstyle\fminimal\rrelative\vcursor\15expand_all\1\0\1\25max_folder_discovery\3�\2\15change_dir\1\0\3\vglobal\1\23restrict_above_cwd\1\venable\2\1\0\1\25use_system_clipboard\2\1\0\4\venable\2\17show_on_dirs\2\ftimeout\3�\3\vignore\2\24filesystem_watchers\1\0\2\venable\2\19debounce_delay\0032\ffilters\fexclude\1\4\0\0\t.map\t.dll\a.o\vcustom\1\0\1\rdotfiles\1\16diagnostics\1\0\4\thint\b\fwarning\b\tinfo\b\nerror\b\1\0\3\venable\1\17show_on_dirs\1\19debounce_delay\0032\16system_open\targs\1\0\1\bcmd\5\23ignore_ft_on_setup\24update_focused_file\16ignore_list\1\0\2\venable\1\16update_root\1\23hijack_directories\1\0\2\venable\2\14auto_open\2\rrenderer\18special_files\1\5\0\0\15Cargo.toml\rMakefile\14README.md\14readme.md\vglyphs\bgit\1\0\a\vstaged\b✓\runstaged\b✗\fignored\b◌\fdeleted\b\frenamed\b➜\14untracked\b★\runmerged\b\vfolder\1\0\b\topen\b\fdefault\b\15arrow_open\b\nempty\b\17arrow_closed\b\15empty_open\b\fsymlink\b\17symlink_open\b\1\0\3\fsymlink\b\fdefault\b\rbookmark\b\tshow\1\0\4\17folder_arrow\2\vfolder\2\tfile\2\bgit\2\1\0\4\18symlink_arrow\n ➛ \fpadding\6 \18git_placement\vbefore\18webdev_colors\2\19indent_markers\nicons\1\0\5\tedge\b│\titem\b│\vcorner\b└\tnone\6 \vbottom\b─\1\0\2\18inline_arrows\2\venable\1\1\0\b\24symlink_destination\2\17indent_width\3\2\25root_folder_modifier\a:~\27highlight_opened_files\tnone\14full_name\1\18highlight_git\1\16group_empty\1\17add_trailing\1\tview\nfloat\20open_win_config\1\0\6\brow\3\1\bcol\3\1\vheight\3\30\nwidth\3\30\vborder\frounded\rrelative\veditor\1\0\1\venable\1\rmappings\tlist\1\0\2\vaction\15close_node\tmode\6n\1\2\0\0\6h\1\0\2\bkey\t<BS>\vaction\5\bkey\1\0\2\vaction\tedit\tmode\6n\1\2\0\0\6l\1\0\2\bkey\6o\vaction\5\1\0\1\16custom_only\1\1\0\t\nwidth\3\30\vnumber\1\15signcolumn\byes\19relativenumber\1 preserve_window_proportions\1\tside\tleft\21hide_root_folder\1\25centralize_selection\1\18adaptive_size\1\14root_dirs\29ignore_buf_on_tab_change\1\0\19\19remove_keymaps\1\14on_attach\fdisable\20respect_buf_cwd\1\23reload_on_bufenter\1\23sync_root_with_cwd\2\24prefer_startup_root\1\fsort_by\tname\25focus_empty_on_setup\1\16open_on_tab\1\23open_on_setup_file\1\18open_on_setup\1\27ignore_buffer_on_setup\1'hijack_unnamed_buffer_when_opening\1\17hijack_netrw\2\18hijack_cursor\1\18disable_netrw\1\28create_in_closed_folder\1\25auto_reload_on_write\2\19select_prompts\1\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'SessionManager', function(cmdargs)
          require('packer.load')({'neovim-session-manager'}, { cmd = 'SessionManager', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'neovim-session-manager'}, { cmd = 'SessionManager' }, _G.packer_plugins)
          return vim.fn.getcompletion('SessionManager ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'StartupTime', function(cmdargs)
          require('packer.load')({'vim-startuptime'}, { cmd = 'StartupTime', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-startuptime'}, { cmd = 'StartupTime' }, _G.packer_plugins)
          return vim.fn.getcompletion('StartupTime ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Telescope', function(cmdargs)
          require('packer.load')({'telescope.nvim'}, { cmd = 'Telescope', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'telescope.nvim'}, { cmd = 'Telescope' }, _G.packer_plugins)
          return vim.fn.getcompletion('Telescope ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TodoTelescope', function(cmdargs)
          require('packer.load')({'todo-comments.nvim'}, { cmd = 'TodoTelescope', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'todo-comments.nvim'}, { cmd = 'TodoTelescope' }, _G.packer_plugins)
          return vim.fn.getcompletion('TodoTelescope ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'nvim-comment', 'nvim-treesitter', 'hop.nvim'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'nvim-lspconfig'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au LspAttach * ++once lua require("packer.load")({'lspsaga.nvim'}, { event = "LspAttach *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
