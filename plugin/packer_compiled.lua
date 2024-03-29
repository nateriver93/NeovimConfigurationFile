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
local package_path_str = "C:\\Users\\su-25\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\su-25\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\su-25\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\su-25\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\su-25\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
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
  ["aerial.nvim"] = {
    config = { "\27LJ\2\n\v\0\1\1\0\0\0\1K\0\1\0\v\0\1\1\0\0\0\1K\0\1\0\15\0\3\4\0\0\0\2+\3\2\0L\3\2\0\v\0\3\3\0\0\0\1L\1\2\0\v\0\2\2\0\0\0\1L\0\2\0Â\16\1\0\5\0-\00056\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0034\4\0\0=\4\t\3=\3\n\0024\3\0\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0024\3\0\0=\3\16\0025\3\17\0004\4\0\0=\4\18\3=\3\19\0023\3\20\0=\3\21\0023\3\22\0=\3\23\0023\3\24\0=\3\25\0023\3\26\0=\3\27\0025\3\28\0=\3\29\0025\3\30\0005\4\31\0=\4 \0033\4!\0=\4\"\3=\3#\0025\3$\0004\4\0\0=\4%\3=\3&\0025\3'\0=\3(\0025\3)\0=\3*\0025\3+\0=\3,\2B\0\2\1K\0\1\0\bman\1\0\1\17update_delay\3¬\2\rmarkdown\1\0\1\17update_delay\3¬\2\15treesitter\1\0\1\17update_delay\3¬\2\blsp\rpriority\1\0\3\31diagnostics_trigger_update\2\17update_delay\3¬\2\23update_when_errors\2\nfloat\roverride\0\15min_height\1\3\0\0\3\b\4³æÌ\t³æý\3\1\0\3\15max_height\4Í³æ\fÌ³ÿ\3\rrelative\vcursor\vborder\frounded\vguides\1\0\4\rmid_item\vââ\15nested_top\tâ \14last_item\vââ\15whitespace\a  \25post_add_all_symbols\0\22post_parse_symbol\0\21on_first_symbols\0\14on_attach\0\vignore\14filetypes\1\0\3\rbuftypes\fspecial\21unlisted_buffers\1\rwintypes\fspecial\nicons\16filter_kind\1\t\0\0\nClass\16Constructor\tEnum\rFunction\14Interface\vModule\vMethod\vStruct\fkeymaps\1\0\31\azA\"actions.tree_toggle_recursive\6H!actions.tree_close_recursive\azc\23actions.tree_close\azR\26actions.tree_open_all\azO actions.tree_open_recursive\azm%actions.tree_decrease_fold_level\6L actions.tree_open_recursive\azo\22actions.tree_open\n<ESC>\18actions.close\6O\"actions.tree_toggle_recursive\6l\24actions.tree_toggle\6k\20actions.prev_up\6?\22actions.show_help\6j\20actions.next_up\azC!actions.tree_close_recursive\azr%actions.tree_increase_fold_level\6}\17actions.next\6h\23actions.tree_close\6{\17actions.prev\t<CR>\17actions.jump\n<C-k>\26actions.up_and_scroll\n<C-j>\28actions.down_and_scroll\azM\27actions.tree_close_all\n<C-s>\23actions.jump_split\azX\28actions.tree_sync_folds\n<C-v>\24actions.jump_vsplit\18<2-LeftMouse>\17actions.jump\6p\19actions.scroll\ag?\22actions.show_help\azx\28actions.tree_sync_folds\aza\24actions.tree_toggle\27close_automatic_events\vlayout\rwin_opts\14max_width\1\0\4\14placement\vwindow\22preserve_equality\1\22default_direction\17prefer_right\14min_width\3\n\1\3\0\0\3(\4³æÌ\t³¦þ\3\rbackends\1\0\17\22disable_max_lines\3N\18post_jump_cmd\15normal! zz\19open_automatic\1\14nerd_font\tauto\23link_tree_to_folds\2\23link_folds_to_tree\1\17manage_folds\1\14lazy_load\2\22highlight_on_jump\3¬\2\23highlight_on_hover\1\22highlight_closest\2\19highlight_mode\16split_width\21disable_max_size\3z\16show_guides\1\18update_events\28TextChanged,InsertLeave\20close_on_select\1\16attach_mode\vwindow\1\5\0\0\15treesitter\blsp\rmarkdown\bman\nsetup\vaerial\frequire\0" },
    loaded = true,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\aerial.nvim",
    url = "https://github.com/stevearc/aerial.nvim"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n¥\r\0\0\t\0)\1L6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0029\2\3\0019\2\a\0024\3\a\0009\4\b\1'\6\t\0'\a\n\0'\b\v\0B\4\4\2>\4\1\0039\4\b\1'\6\f\0'\a\r\0'\b\14\0B\4\4\2>\4\2\0039\4\b\1'\6\15\0'\a\16\0'\b\17\0B\4\4\2>\4\3\0039\4\b\1'\6\18\0'\a\19\0'\b\20\0B\4\4\2>\4\4\0039\4\b\1'\6\21\0'\a\22\0'\b\23\0B\4\4\2>\4\5\0039\4\b\1'\6\24\0'\a\25\0'\b\26\0B\4\4\0?\4\0\0=\3\5\0026\2\27\0009\2\28\2'\4\29\0B\2\2\2\18\5\2\0009\3\30\2'\6\31\0B\3\3\2\18\6\2\0009\4 \2B\4\2\0019\4\3\0019\4!\4=\3\5\0049\4\"\0019\4#\4+\5\2\0=\5$\0046\4%\0009\4&\4'\6'\0B\4\2\0019\4(\0009\6\"\1B\4\2\1K\0\1\0\nsetup)autocmd User AlphaReady echo 'ready'\bcmd\bvim\14noautocmd\topts\vconfig\vfooter\nclose\a*a\tread\ffortune\npopen\aio\23:TodoTelescope<CR>\26ï¢  Search Todo tree\17<leader> f t\27:Telescope keymaps<CR>\24ï  Search keymaps\17<leader> f m\26:Telescope aerial<CR>!îª³  Search Function outline\17<leader> f o\30:Telescope find_files<CR>\22î¬¨  Search Files\17<leader> f f :Telescope file_browser<CR>\24î¯  Folder Browser\17<leader> f p%:SessionManager load_session<CR>\22îª  Load Session\17<leader> s l\vbutton\fbuttons\1\a\0\0\1 ââââ   âââ ââââââââ âââââââ  âââ   âââ âââ ââââ   ââââ\1 âââââ  âââ âââââââââââââââââ âââ   âââ âââ âââââ âââââ\1 ââââââ âââ ââââââ  âââ   âââ âââ   âââ âââ âââââââââââ\1 ââââââââââ ââââââ  âââ   âââ ââââ ââââ âââ âââââââââââ\1 âââ ââââââ âââââââââââââââââ  âââââââ  âââ âââ âââ âââ\1 âââ  âââââ ââââââââ âââââââ    âââââ   âââ âââ     âââ\bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\rÀ\4\0" },
    loaded = true,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-buffer\\after\\plugin\\cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    after_files = { "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-calc\\after\\plugin\\cmp_calc.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-cmdline"] = {
    after_files = { "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-cmdline\\after\\plugin\\cmp_cmdline.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    after = { "nvim-lspconfig" },
    after_files = { "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-nvim-lsp\\after\\plugin\\cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    after_files = { "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-path\\after\\plugin\\cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    after_files = { "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-vsnip\\after\\plugin\\cmp_vsnip.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["diffview.nvim"] = {
    commands = { "DiffviewOpen", "DiffviewClose" },
    config = { "\27LJ\2\nL\0\0\n\0®\2\2ò\0056\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0005\4\5\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\14\0005\5\r\0=\5\15\0045\5\16\0=\5\17\0045\5\18\0=\5\19\4=\4\20\0035\4\21\0005\5\22\0=\5\23\0045\5\24\0004\6\0\0=\6\25\5=\5\26\4=\4\27\0035\4%\0005\5!\0005\6\29\0005\a\28\0=\a\30\0065\a\31\0=\a \6=\6\"\0055\6#\0004\a\0\0=\a\30\0064\a\0\0=\a \6=\6$\5=\5&\0045\5'\0004\6\0\0=\6\25\5=\5\26\4=\4(\0035\4*\0005\5)\0004\6\0\0=\6\25\5=\5\26\4=\4+\0035\4,\0004\5\0\0=\5-\0044\5\0\0=\5.\4=\4/\0034\4\0\0=\0040\0035\0041\0004\5\21\0005\0062\0009\a3\0>\a\3\0065\a4\0>\a\4\6>\6\1\0055\0065\0009\a6\0>\a\3\0065\a7\0>\a\4\6>\6\2\0055\0068\0009\a9\0>\a\3\0065\a:\0>\a\4\6>\6\3\0055\6;\0009\a<\0>\a\3\0065\a=\0>\a\4\6>\6\4\0055\6>\0009\a?\0>\a\3\0065\a@\0>\a\4\6>\6\5\0055\6A\0009\aB\0>\a\3\0065\aC\0>\a\4\6>\6\6\0055\6D\0009\aE\0>\a\3\0065\aF\0>\a\4\6>\6\a\0055\6G\0009\aH\0>\a\3\0065\aI\0>\a\4\6>\6\b\0055\6J\0009\aK\0>\a\3\0065\aL\0>\a\4\6>\6\t\0055\6M\0009\aN\0>\a\3\0065\aO\0>\a\4\6>\6\n\0055\6P\0009\aQ\0'\tR\0B\a\2\2>\a\3\0065\aS\0>\a\4\6>\6\v\0055\6T\0009\aQ\0'\tU\0B\a\2\2>\a\3\0065\aV\0>\a\4\6>\6\f\0055\6W\0009\aQ\0'\tX\0B\a\2\2>\a\3\0065\aY\0>\a\4\6>\6\r\0055\6Z\0009\aQ\0'\t[\0B\a\2\2>\a\3\0065\a\\\0>\a\4\6>\6\14\0055\6]\0009\aQ\0'\t^\0B\a\2\2>\a\3\0065\a_\0>\a\4\6>\6\15\0055\6`\0009\aa\0'\tR\0B\a\2\2>\a\3\0065\ab\0>\a\4\6>\6\16\0055\6c\0009\aa\0'\tU\0B\a\2\2>\a\3\0065\ad\0>\a\4\6>\6\17\0055\6e\0009\aa\0'\tX\0B\a\2\2>\a\3\0065\af\0>\a\4\6>\6\18\0055\6g\0009\aa\0'\t[\0B\a\2\2>\a\3\0065\ah\0>\a\4\6>\6\19\0055\6i\0009\aa\0'\t^\0B\a\2\2>\a\3\0065\aj\0>\a\4\6>\6\20\5=\5\20\0044\5\3\0005\6k\0009\al\0005\tm\0B\a\2\2>\a\3\0065\an\0>\a\4\6>\6\1\5=\5o\0044\5\3\0005\6p\0009\al\0005\tq\0B\a\2\2>\a\3\0065\ar\0>\a\4\6>\6\1\5=\5s\0044\5\4\0005\6u\0005\at\0>\a\1\0069\av\0'\tR\0B\a\2\2>\a\3\0065\aw\0>\a\4\6>\6\1\0055\6y\0005\ax\0>\a\1\0069\av\0'\tU\0B\a\2\2>\a\3\0065\az\0>\a\4\6>\6\2\0055\6{\0009\al\0005\t|\0B\a\2\2>\a\3\0065\a}\0>\a\4\6>\6\3\5=\5~\0044\5\5\0005\6\0005\a\127\0>\a\1\0069\av\0'\tX\0B\a\2\2>\a\3\0065\a\0>\a\4\6>\6\1\0055\6\0005\a\0>\a\1\0069\av\0'\tR\0B\a\2\2>\a\3\0065\a\0>\a\4\6>\6\2\0055\6\0005\a\0>\a\1\0069\av\0'\tU\0B\a\2\2>\a\3\0065\a\0>\a\4\6>\6\3\0055\6\0009\al\0005\t\0B\a\2\2>\a\3\0065\a\0>\a\4\6>\6\4\5=\5\0044\5)\0005\6\0009\a\0>\a\3\0065\a\0>\a\4\6>\6\1\0055\6\0009\a\0>\a\3\0065\a\0>\a\4\6>\6\2\0055\6\0009\a\0>\a\3\0065\a\0>\a\4\6>\6\3\0055\6\0009\a\0>\a\3\0065\a\0>\a\4\6>\6\4\0055\6\0009\a\0>\a\3\0065\a\0>\a\4\6>\6\5\0055\6\0009\a\0>\a\3\0065\a\0>\a\4\6>\6\6\0055\6\0009\a\0>\a\3\0065\a\0>\a\4\6>\6\a\0055\6\0009\a\0>\a\3\0065\a\0>\a\4\6>\6\b\0055\6\0009\a \0>\a\3\0065\a¡\0>\a\4\6>\6\t\0055\6¢\0009\a£\0>\a\3\0065\a¤\0>\a\4\6>\6\n\0055\6¥\0009\a¦\0>\a\3\0065\a§\0>\a\4\6>\6\v\0055\6¨\0009\a©\0>\a\3\0065\aª\0>\a\4\6>\6\f\0055\6«\0009\a¬\0>\a\3\0065\a­\0>\a\4\6>\6\r\0055\6®\0009\a¯\0>\a\3\0065\a°\0>\a\4\6>\6\14\0055\6±\0009\a²\0>\a\3\0065\a³\0>\a\4\6>\6\15\0055\6´\0009\a²\0>\a\3\0065\aµ\0>\a\4\6>\6\16\0055\6¶\0009\a·\0>\a\3\0065\a¸\0>\a\4\6>\6\17\0055\6¹\0009\aº\0>\a\3\0065\a»\0>\a\4\6>\6\18\0055\6¼\0009\a½\0>\a\3\0065\a¾\0>\a\4\6>\6\19\0055\6¿\0009\aÀ\0*\t\0\0B\a\2\2>\a\3\0065\aÁ\0>\a\4\6>\6\20\0055\6Â\0009\aÀ\0*\t\1\0B\a\2\2>\a\3\0065\aÃ\0>\a\4\6>\6\21\0055\6Ä\0009\a3\0>\a\3\0065\aÅ\0>\a\4\6>\6\22\0055\6Æ\0009\a6\0>\a\3\0065\aÇ\0>\a\4\6>\6\23\0055\6È\0009\a9\0>\a\3\0065\aÉ\0>\a\4\6>\6\24\0055\6Ê\0009\a<\0>\a\3\0065\aË\0>\a\4\6>\6\25\0055\6Ì\0009\a?\0>\a\3\0065\aÍ\0>\a\4\6>\6\26\0055\6Î\0009\aÏ\0>\a\3\0065\aÐ\0>\a\4\6>\6\27\0055\6Ñ\0009\aÒ\0>\a\3\0065\aÓ\0>\a\4\6>\6\28\0055\6Ô\0009\aÕ\0>\a\3\0065\aÖ\0>\a\4\6>\6\29\0055\6×\0009\aB\0>\a\3\0065\aØ\0>\a\4\6>\6\30\0055\6Ù\0009\aE\0>\a\3\0065\aÚ\0>\a\4\6>\6\31\0055\6Û\0009\aH\0>\a\3\0065\aÜ\0>\a\4\6>\6 \0055\6Ý\0009\aK\0>\a\3\0065\aÞ\0>\a\4\6>\6!\0055\6ß\0009\aN\0>\a\3\0065\aà\0>\a\4\6>\6\"\0055\6á\0009\al\0'\t\27\0B\a\2\2>\a\3\0065\aâ\0>\a\4\6>\6#\0055\6ã\0009\aa\0'\tR\0B\a\2\2>\a\3\0065\aä\0>\a\4\6>\6$\0055\6å\0009\aa\0'\tU\0B\a\2\2>\a\3\0065\aæ\0>\a\4\6>\6%\0055\6ç\0009\aa\0'\tX\0B\a\2\2>\a\3\0065\aè\0>\a\4\6>\6&\0055\6é\0009\aa\0'\t[\0B\a\2\2>\a\3\0065\aê\0>\a\4\6>\6'\0055\6ë\0009\aa\0'\t^\0B\a\2\2>\a\3\0065\aì\0>\a\4\6>\6(\5=\5\27\0044\5\25\0005\6í\0009\aî\0>\a\3\0065\aï\0>\a\4\6>\6\1\0055\6ð\0009\añ\0>\a\3\0065\aò\0>\a\4\6>\6\2\0055\6ó\0009\aô\0>\a\3\0065\aõ\0>\a\4\6>\6\3\0055\6ö\0009\a¬\0>\a\3\0065\a÷\0>\a\4\6>\6\4\0055\6ø\0009\aº\0>\a\3\0065\aù\0>\a\4\6>\6\5\0055\6ú\0009\a½\0>\a\3\0065\aû\0>\a\4\6>\6\6\0055\6ü\0009\a\0>\a\3\0065\aý\0>\a\4\6>\6\a\0055\6þ\0009\a\0>\a\3\0065\aÿ\0>\a\4\6>\6\b\0055\6\0\0019\a\0>\a\3\0065\a\1\1>\a\4\6>\6\t\0055\6\2\0019\a\0>\a\3\0065\a\3\1>\a\4\6>\6\n\0055\6\4\0019\a\0>\a\3\0065\a\5\1>\a\4\6>\6\v\0055\6\6\0019\a\0>\a\3\0065\a\a\1>\a\4\6>\6\f\0055\6\b\0019\a\0>\a\3\0065\a\t\1>\a\4\6>\6\r\0055\6\n\0019\aÀ\0*\t\0\0B\a\2\2>\a\3\0065\a\v\1>\a\4\6>\6\14\0055\6\f\0019\aÀ\0*\t\1\0B\a\2\2>\a\3\0065\a\r\1>\a\4\6>\6\15\0055\6\14\0019\a3\0>\a\3\0065\a\15\1>\a\4\6>\6\16\0055\6\16\0019\a6\0>\a\3\0065\a\17\1>\a\4\6>\6\17\0055\6\18\0019\a9\0>\a\3\0065\a\19\1>\a\4\6>\6\18\0055\6\20\0019\a<\0>\a\3\0065\a\21\1>\a\4\6>\6\19\0055\6\22\0019\a?\0>\a\3\0065\a\23\1>\a\4\6>\6\20\0055\6\24\0019\aB\0>\a\3\0065\a\25\1>\a\4\6>\6\21\0055\6\26\0019\aE\0>\a\3\0065\a\27\1>\a\4\6>\6\22\0055\6\28\0019\aH\0>\a\3\0065\a\29\1>\a\4\6>\6\23\0055\6\30\0019\al\0'\t(\0B\a\2\2>\a\3\0065\a\31\1>\a\4\6>\6\24\5=\5(\0044\5\4\0005\6 \0019\a\0>\a\3\0065\a!\1>\a\4\6>\6\1\0055\6\"\1'\a#\0018\a\a\0>\a\3\0065\a$\1>\a\4\6>\6\2\0055\6%\0019\al\0'\t&\1B\a\2\2>\a\3\0065\a'\1>\a\4\6>\6\3\5'\6&\1<\5\6\0044\5\3\0005\6(\1'\a#\0018\a\a\0>\a\3\0065\a)\1>\a\4\6>\6\1\0055\6*\1'\a#\0018\a\a\0>\a\3\0065\a+\1>\a\4\6>\6\2\5'\6,\1<\5\6\4'\5-\1<\4\5\3B\1\2\1K\0\1\0\fkeymaps\15help_panel\1\0\1\tdesc\20Close help menu\1\3\0\0\6n\n<esc>\1\0\1\tdesc\20Close help menu\1\3\0\0\6n\6q\1\0\1\tdesc\24Open the help panel\17option_panel\1\3\0\0\6n\ag?\1\0\1\tdesc\20Close the panel\nclose\1\3\0\0\6n\6q\1\0\1\tdesc\30Change the current option\1\3\0\0\6n\n<tab>\1\0\1\tdesc\24Open the help panel\1\3\0\0\6n\ag?\1\0\1\tdesc\28Cycle available layouts\1\3\0\0\6n\vg<C-x>\1\0\1\tdesc\26Toggle the file panel\1\3\0\0\6n\14<leader>b\1\0\1\tdesc\"Bring focus to the file panel\1\3\0\0\6n\14<leader>e\1\0\1\tdesc#Open the file in a new tabpage\1\3\0\0\6n\f<C-w>gf\1\0\1\tdesc!Open the file in a new split\1\3\0\0\6n\15<C-w><C-f>\1\0\1\tdesc*Open the file in the previous tabpage\1\3\0\0\6n\agf\1\0\1\tdesc(Open the diff for the previous file\1\3\0\0\6n\f<s-tab>\1\0\1\tdesc$Open the diff for the next file\1\3\0\0\6n\n<tab>\1\0\1\tdesc\25Scroll the view down\1\3\0\0\6n\n<c-f>\1\0\1\tdesc\23Scroll the view up\1\3\0\0\6n\n<c-b>\1\0\1\tdesc*Open the diff for the selected entry.\1\3\0\0\6n\18<2-LeftMouse>\1\0\1\tdesc*Open the diff for the selected entry.\1\3\0\0\6n\6o\1\0\1\tdesc*Open the diff for the selected entry.\1\3\0\0\6n\t<cr>\1\0\1\tdesc1Bring the cursor to the previous file entry.\1\3\0\0\6n\t<up>\1\0\1\tdesc1Bring the cursor to the previous file entry.\1\3\0\0\6n\6k\1\0\1\tdesc,Bring the cursor to the next file entry\1\3\0\0\6n\v<down>\1\0\1\tdesc,Bring the cursor to the next file entry\1\3\0\0\6n\6j\1\0\1\tdesc\23Collapse all folds\1\3\0\0\6n\azM\1\0\1\tdesc\21Expand all folds\1\3\0\0\6n\azR\1\0\1\tdesc\24Show commit details\1\3\0\0\6n\6L\1\0\1\tdesc7Copy the commit hash of the entry under the cursor\14copy_hash\1\3\0\0\6n\6y\1\0\1\tdesc2Open the entry under the cursor in a diffview\21open_in_diffview\1\3\0\0\6n\f<C-A-d>\1\0\1\tdesc\26Open the option panel\foptions\1\3\0\0\6n\ag!\1\0\1\tdesc2Delete the conflict region for the whole file\1\3\0\0\6n\adX\1\0\1\tdesc=Choose all the versions of a conflict for the whole file\1\3\0\0\6n\15<leader>cA\1\0\1\tdesc=Choose the BASE version of a conflict for the whole file\1\3\0\0\6n\15<leader>cB\1\0\1\tdesc?Choose the THEIRS version of a conflict for the whole file\1\3\0\0\6n\15<leader>cT\1\0\1\tdesc=Choose the OURS version of a conflict for the whole file\1\3\0\0\6n\15<leader>cO\1\0\1\tdesc\24Open the help panel\1\3\0\0\6n\ag?\1\0\1\tdesc\28Go to the next conflict\1\3\0\0\6n\a]x\1\0\1\tdesc Go to the previous conflict\1\3\0\0\6n\a[x\1\0\1\tdesc\28Cycle available layouts\1\3\0\0\6n\vg<C-x>\1\0\1\tdesc\26Toggle the file panel\1\3\0\0\6n\14<leader>b\1\0\1\tdesc\"Bring focus to the file panel\1\3\0\0\6n\14<leader>e\1\0\1\tdesc.Update stats and entries in the file list\18refresh_files\1\3\0\0\6n\6R\1\0\1\tdesc7Flatten empty subdirectories in tree listing style\24toggle_flatten_dirs\1\3\0\0\6n\6f\1\0\1\tdesc+Toggle between 'list' and 'tree' views\18listing_style\1\3\0\0\6n\6i\1\0\1\tdesc#Open the file in a new tabpage\1\3\0\0\6n\f<C-w>gf\1\0\1\tdesc!Open the file in a new split\1\3\0\0\6n\15<C-w><C-f>\1\0\1\tdesc*Open the file in the previous tabpage\1\3\0\0\6n\agf\1\0\1\tdesc(Open the diff for the previous file\1\3\0\0\6n\f<s-tab>\1\0\1\tdesc$Open the diff for the next file\1\3\0\0\6n\n<tab>\1\0\1\tdesc\25Scroll the view down\1\3\0\0\6n\n<c-f>\1\0\1\tdesc\23Scroll the view up\16scroll_view\1\3\0\0\6n\n<c-b>\1\0\1\tdesc\23Collapse all folds\20close_all_folds\1\3\0\0\6n\azM\1\0\1\tdesc\21Expand all folds\19open_all_folds\1\3\0\0\6n\azR\1\0\1\tdesc\16Toggle fold\16toggle_fold\1\3\0\0\6n\aza\1\0\1\tdesc\18Collapse fold\1\3\0\0\6n\azc\1\0\1\tdesc\18Collapse fold\15close_fold\1\3\0\0\6n\6h\1\0\1\tdesc\16Expand fold\14open_fold\1\3\0\0\6n\azo\1\0\1\tdesc\30Open the commit log panel\20open_commit_log\1\3\0\0\6n\6L\1\0\1\tdesc0Restore entry to the state on the left side\18restore_entry\1\3\0\0\6n\6X\1\0\1\tdesc\24Unstage all entries\16unstage_all\1\3\0\0\6n\6U\1\0\1\tdesc\22Stage all entries\14stage_all\1\3\0\0\6n\6S\1\0\1\tdesc'Stage / unstage the selected entry\23toggle_stage_entry\1\3\0\0\6n\6-\1\0\1\tdesc)Open the diff for the selected entry\1\3\0\0\6n\18<2-LeftMouse>\1\0\1\tdesc)Open the diff for the selected entry\1\3\0\0\6n\6l\1\0\1\tdesc)Open the diff for the selected entry\1\3\0\0\6n\6o\1\0\1\tdesc)Open the diff for the selected entry\17select_entry\1\3\0\0\6n\t<cr>\1\0\1\tdesc0Bring the cursor to the previous file entry\1\3\0\0\6n\t<up>\1\0\1\tdesc0Bring the cursor to the previous file entry\15prev_entry\1\3\0\0\6n\6k\1\0\1\tdesc,Bring the cursor to the next file entry\1\3\0\0\6n\v<down>\1\0\1\tdesc,Bring the cursor to the next file entry\15next_entry\1\3\0\0\6n\6j\ndiff4\1\0\1\tdesc\24Open the help panel\1\3\0\0\tview\ndiff4\1\3\0\0\6n\ag?\1\0\1\tdesc=Obtain the diff hunk from the THEIRS version of the file\1\3\0\0\0\b3do\1\3\0\0\6n\6x\1\0\1\tdesc;Obtain the diff hunk from the OURS version of the file\1\3\0\0\0\b2do\1\3\0\0\6n\6x\1\0\1\tdesc;Obtain the diff hunk from the BASE version of the file\1\3\0\0\0\b1do\1\3\0\0\6n\6x\ndiff3\1\0\1\tdesc\24Open the help panel\1\3\0\0\tview\ndiff3\1\3\0\0\6n\ag?\1\0\1\tdesc=Obtain the diff hunk from the THEIRS version of the file\1\3\0\0\0\b3do\1\3\0\0\6n\6x\1\0\1\tdesc;Obtain the diff hunk from the OURS version of the file\fdiffget\1\3\0\0\0\b2do\1\3\0\0\6n\6x\ndiff2\1\0\1\tdesc\24Open the help panel\1\3\0\0\tview\ndiff2\1\3\0\0\6n\ag?\ndiff1\1\0\1\tdesc\24Open the help panel\1\3\0\0\tview\ndiff1\thelp\1\3\0\0\6n\ag?\1\0\1\tdesc2Delete the conflict region for the whole file\1\3\0\0\6n\adX\1\0\1\tdesc=Choose all the versions of a conflict for the whole file\1\3\0\0\6n\15<leader>cA\1\0\1\tdesc=Choose the BASE version of a conflict for the whole file\1\3\0\0\6n\15<leader>cB\1\0\1\tdesc?Choose the THEIRS version of a conflict for the whole file\1\3\0\0\6n\15<leader>cT\1\0\1\tdesc=Choose the OURS version of a conflict for the whole file\24conflict_choose_all\1\3\0\0\6n\15<leader>cO\1\0\1\tdesc\31Delete the conflict region\tnone\1\3\0\0\6n\adx\1\0\1\tdesc*Choose all the versions of a conflict\ball\1\3\0\0\6n\15<leader>ca\1\0\1\tdesc*Choose the BASE version of a conflict\tbase\1\3\0\0\6n\15<leader>cb\1\0\1\tdesc,Choose the THEIRS version of a conflict\vtheirs\1\3\0\0\6n\15<leader>ct\1\0\1\tdesc*Choose the OURS version of a conflict\tours\20conflict_choose\1\3\0\0\6n\15<leader>co\1\0\1\tdesc1In the merge-tool: jump to the next conflict\18next_conflict\1\3\0\0\6n\a]x\1\0\1\tdesc5In the merge-tool: jump to the previous conflict\18prev_conflict\1\3\0\0\6n\a[x\1\0\1\tdesc%Cycle through available layouts.\17cycle_layout\1\3\0\0\6n\vg<C-x>\1\0\1\tdesc\27Toggle the file panel.\17toggle_files\1\3\0\0\6n\14<leader>b\1\0\1\tdesc\"Bring focus to the file panel\16focus_files\1\3\0\0\6n\14<leader>e\1\0\1\tdesc#Open the file in a new tabpage\18goto_file_tab\1\3\0\0\6n\f<C-w>gf\1\0\1\tdesc!Open the file in a new split\20goto_file_split\1\3\0\0\6n\15<C-w><C-f>\1\0\1\tdesc*Open the file in the previous tabpage\19goto_file_edit\1\3\0\0\6n\agf\1\0\1\tdesc(Open the diff for the previous file\22select_prev_entry\1\3\0\0\6n\f<s-tab>\1\0\1\tdesc$Open the diff for the next file\22select_next_entry\1\3\0\0\6n\n<tab>\1\0\1\21disable_defaults\1\nhooks\17default_args\24DiffviewFileHistory\17DiffviewOpen\1\0\0\21commit_log_panel\1\0\0\1\0\0\23file_history_panel\1\0\2\vheight\3\16\rposition\vbottom\16log_options\1\0\0\ahg\1\0\0\bgit\1\0\0\15multi_file\1\0\1\16diff_merges\17first-parent\16single_file\1\0\0\1\0\1\16diff_merges\rcombined\15file_panel\15win_config\rwin_opts\1\0\2\rposition\tleft\nwidth\3#\17tree_options\1\0\2\17flatten_dirs\2\20folder_statuses\16only_folded\1\0\1\18listing_style\ttree\tview\17file_history\1\0\2\vlayout\21diff2_horizontal\16winbar_info\1\15merge_tool\1\0\3\16winbar_info\2\vlayout\21diff3_horizontal\24disable_diagnostics\2\fdefault\1\0\0\1\0\2\vlayout\21diff2_horizontal\16winbar_info\1\nsigns\1\0\3\tdone\bâ\16fold_closed\bï \14fold_open\bï¼\nicons\1\0\2\18folder_closed\bî¿\16folder_open\bî¾\vhg_cmd\1\2\0\0\ahg\fgit_cmd\1\2\0\0\bgit\1\0\5\16watch_index\2\20show_help_hints\2\14use_icons\2\21enhanced_diff_hl\1\18diff_binaries\1\nsetup\rdiffview\21diffview.actions\frequire\1Àþ\v\1Àþ\3\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["dressing.nvim"] = {
    after = { "neovim-session-manager" },
    config = { "\27LJ\2\n\v\0\1\1\0\0\0\1L\0\2\0î\3\1\0\6\0\21\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\19\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0034\4\0\0=\4\b\0035\4\t\0=\4\n\0035\4\f\0005\5\v\0=\5\r\0045\5\14\0=\5\15\4=\4\16\0033\4\17\0=\4\18\3=\3\20\2B\0\2\1K\0\1\0\ninput\1\0\0\roverride\0\rmappings\6i\1\0\4\t<Up>\16HistoryPrev\n<C-c>\nClose\v<Down>\16HistoryNext\t<CR>\fConfirm\6n\1\0\0\1\0\2\n<Esc>\nClose\t<CR>\fConfirm\16win_options\1\0\2\rwinblend\3\n\twrap\1\16buf_options\14min_width\1\3\0\0\3\20\4³æÌ\t³¦þ\3\14max_width\1\3\0\0\3\1\4Í³æ\fÌ³ÿ\3\1\0\t\vborder\frounded\rrelative\vcursor\17prefer_width\3(\fenabled\2\vanchor\aSW\20start_in_insert\2\16insert_only\2\17prompt_align\tleft\19default_prompt\vInput:\nsetup\rdressing\frequire\0" },
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["friendly-snippets"] = {
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["impatient.nvim"] = {
    config = { "\27LJ\2\ng\0\0\4\0\5\0\f6\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0016\1\0\0'\3\3\0B\1\2\0029\1\4\0014\3\0\0B\1\2\1K\0\1\0\nsetup\rfiletype\19enable_profile\14impatient\frequire\0" },
    loaded = true,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nà\1\0\0\4\0\n\0\0186\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0009\0\3\0\18\2\0\0009\0\4\0'\3\5\0B\0\3\0016\0\6\0'\2\a\0B\0\2\0029\0\b\0005\2\t\0B\0\2\1K\0\1\0\1\0\3\25show_current_context\2\25space_char_blankline\6 \31show_current_context_start\2\nsetup\21indent_blankline\frequire\feol:â´\vappend\14listchars\tlist\bopt\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    after = { "nvim-cmp" },
    config = { "\27LJ\2\nò\3\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15symbol_map\1\0!\vStruct\bï\fSnippet\bï¬\rConstant\bî¬\15EnumMember\bï\fKeyword\bï \rOperator\bï\vFolder\bï\14Reference\bï\rFunction\aÎ»\tFile\bï\nColor\bî«\fBoolean\bâ¨\vNumber\6#\tEnum\bï\vString\tð¢\nValue\bï¢\tUnit\bïµ\rProperty\bî¤\14Interface\bî´\fPackage\bï£\14Namespace\bï¢\vModule\bï¨\rVariable\bî\16Constructor\bî\vMethod\aÆ\nClass\bï \tNull\tNULL\bKey\tð\vObject\bï²\nArray\bï©\nField\bïµ\18TypeParameter\bî\nEvent\bï§\1\0\2\vpreset\rcodicons\tmode\16symbol_text\tinit\flspkind\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n\a\0\0\a\0(\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0004\5\0\0=\5\t\0044\5\0\0=\5\n\4=\4\v\0034\4\0\0=\4\f\0035\4\r\0=\4\14\3=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0034\4\3\0005\5\22\0005\6\23\0=\6\24\5>\5\1\4=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\3=\3 \0025\3!\0004\4\0\0=\4\19\0034\4\0\0=\4\21\0035\4\"\0=\4\25\0035\4#\0=\4\27\0034\4\0\0=\4\29\0034\4\0\0=\4\31\3=\3$\0024\3\0\0=\3%\0024\3\0\0=\3\n\0024\3\0\0=\3&\0024\3\0\0=\3'\2B\0\2\1K\0\1\0\15extensions\20inactive_winbar\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\fsymbols\1\0\3\rreadonly\b[-]\funnamed\14[No Name]\rmodified\b[+]\1\2\3\0\rfilename\20shorting_target\3(\16file_status\2\tpath\3\1\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\frefresh\1\0\3\ftabline\3è\a\vwinbar\3è\a\15statusline\3è\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\0\23section_separators\1\0\2\nright\bî²\tleft\bî°\25component_separators\1\0\2\nright\bî³\tleft\bî±\1\0\4\ntheme\tauto\18icons_enabled\2\17globalstatus\1\25always_divide_middle\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    config = { "\27LJ\2\n¬\6\0\0\3\0\31\0O6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\0\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\5\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\1\0'\1\n\0=\1\t\0006\0\0\0009\0\1\0)\1\0\0=\1\v\0006\0\0\0009\0\1\0'\1\b\0=\1\f\0006\0\0\0009\0\1\0005\1\14\0004\2\0\0=\2\15\0014\2\0\0=\2\16\0014\2\0\0=\2\17\0014\2\0\0=\2\18\0014\2\0\0=\2\19\0014\2\0\0=\2\20\0014\2\0\0=\2\21\1=\1\r\0006\0\0\0009\0\1\0'\1\b\0=\1\22\0006\0\0\0009\0\1\0'\1\b\0=\1\23\0006\0\0\0009\0\1\0'\1\b\0=\1\24\0006\0\0\0009\0\1\0'\1\26\0=\1\25\0006\0\0\0009\0\1\0005\1\28\0=\1\27\0006\0\0\0009\0\1\0'\1\30\0=\1\29\0K\0\1\0\nlight\15mkdp_theme\1\4\0\0\rmarkdown\amd\aMD\19mkdp_filetypes\18ã${name}ã\20mkdp_page_title\14mkdp_port\23mkdp_highlight_css\22mkdp_markdown_css\btoc\23flowchart_diagrams\22sequence_diagrams\tmaid\buml\nkatex\tmkit\1\0\5\19hide_yaml_meta\3\1\21sync_scroll_type\vmiddle\24disable_sync_scroll\3\0\21disable_filename\3\0\21content_editable\1\25mkdp_preview_options\21mkdp_browserfunc\26mkdp_echo_preview_url\vchrome\17mkdp_browser\5\17mkdp_open_ip\27mkdp_open_to_the_world\28mkdp_command_for_global\22mkdp_refresh_slow\20mkdp_auto_close\20mkdp_auto_start\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\n\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\1\27automatic_installation\1\1\4\0\0\vlua_ls\vclangd\nvimls\nsetup\20mason-lspconfig\frequire\0" },
    load_after = {
      ["mason.nvim"] = true,
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    after = { "mason-lspconfig.nvim" },
    config = { "\27LJ\2\n\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\aui\1\0\0\nicons\1\0\0\1\0\3\22package_installed\bâ\24package_uninstalled\bâ\20package_pending\bâ\nsetup\nmason\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neovim-session-manager"] = {
    config = { "\27LJ\2\nö\3\0\0\n\0\20\0 6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\n\0\18\6\0\0009\4\4\0006\a\5\0009\a\6\a9\a\a\a'\t\b\0B\a\2\2'\b\t\0B\4\4\2=\4\v\0036\4\0\0'\6\f\0B\4\2\0029\4\r\0049\4\14\4=\4\15\0034\4\0\0=\4\16\0035\4\17\0=\4\18\0034\4\0\0=\4\19\3B\1\2\1K\0\1\0\29autosave_ignore_buftypes\30autosave_ignore_filetypes\1\2\0\0\14gitcommit\25autosave_ignore_dirs\18autoload_mode\rDisabled\17AutoloadMode\27session_manager.config\17sessions_dir\1\0\6\29autosave_only_in_session\1\19colon_replacer\a++\18path_replacer\a__\20max_path_length\3P\31autosave_ignore_not_normal\2\26autosave_last_session\2\rsessions\tdata\fstdpath\afn\bvim\bnew\nsetup\20session_manager\17plenary.path\frequire\0" },
    load_after = {
      ["dressing.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  ["nightfox.nvim"] = {
    config = { "\27LJ\2\n\4\0\0\a\0\20\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\b\0006\4\3\0009\4\4\0049\4\5\4'\6\6\0B\4\2\2'\5\a\0&\4\5\4=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0034\4\0\0=\4\14\3=\3\16\0024\3\0\0=\3\17\0024\3\0\0=\3\18\0024\3\0\0=\3\19\2B\0\2\1K\0\1\0\vgroups\nspecs\rpalettes\foptions\1\0\0\fmodules\finverse\1\0\3\vvisual\1\16match_paren\1\vsearch\1\vstyles\1\0\n\rkeywords\tNONE\14variables\tNONE\fstrings\tNONE\14operators\tNONE\fnumbers\tNONE\14constants\tNONE\14functions\tNONE\17conditionals\tNONE\rcomments\tNONE\ntypes\tNONE\17compile_path\1\0\5\19module_default\2\17dim_inactive\1\20terminal_colors\2\16transparent\1\24compile_file_suffix\14_compiled\14/nightfox\ncache\fstdpath\afn\bvim\nsetup\rnightfox\frequire\0" },
    loaded = true,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nvim-cmp"] = {
    after = { "cmp-calc", "cmp-cmdline", "cmp-path", "vim-vsnip", "friendly-snippets", "cmp-nvim-lsp", "cmp-vsnip", "cmp-buffer" },
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimQ\0\2\6\0\a\0\n'\2\1\0006\3\2\0009\3\3\0039\5\4\0009\5\5\5B\3\2\2'\4\6\0&\2\4\2=\2\0\1L\1\2\0\6]\tname\vsource\nupper\vstring\6[\tmenuh\0\3\6\0\5\0\f\n\1\0\0X\3\t9\3\0\1\n\3\0\0X\3\66\3\1\0009\3\2\0039\3\3\0039\3\4\0039\5\0\1B\3\2\1K\0\1\0\26open_floating_preview\tutil\blsp\bvim\18documentationó\5\1\0\v\0000\0R6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0045\5\v\0009\6\t\0009\6\n\6B\6\1\2=\6\f\0059\6\t\0009\6\r\6B\6\1\2=\6\14\0059\6\t\0009\6\15\0065\b\18\0009\t\16\0009\t\17\t=\t\19\bB\6\2\2=\6\20\5=\5\t\0044\5\a\0005\6\21\0>\6\1\0055\6\22\0>\6\2\0055\6\23\0>\6\3\0055\6\24\0>\6\4\0055\6\25\0>\6\5\0055\6\26\0>\6\6\5=\5\27\0045\5 \0009\6\28\0015\b\29\0003\t\30\0=\t\31\bB\6\2\2=\6!\5=\5\"\0045\5$\0003\6#\0=\6%\5=\5&\4B\2\2\0019\2\3\0009\2'\2'\4(\0005\5*\0004\6\3\0005\a)\0>\a\1\6=\6\27\5B\2\3\0019\2\3\0009\2'\2'\4+\0005\5/\0009\6,\0009\6\27\0064\b\3\0005\t-\0>\t\1\b4\t\3\0005\n.\0>\n\1\tB\6\3\2=\6\27\5B\2\3\1K\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\vconfig\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\nevent\21on_selected_item\1\0\0\0\15formatting\vformat\1\0\0\vbefore\0\1\0\2\14with_text\2\rmaxwidth\0032\15cmp_format\fsources\1\0\1\tname\nvsnip\1\0\1\tname\tcalc\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\n<C-o>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\flspkind\bcmp\frequire\0" },
    load_after = {
      ["lspkind-nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n{\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\17line_mapping\22<leader><leader>c\21operator_mapping\14<leader>c\nsetup\17nvim_comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-lspconfig"] = {
    after = { "mason-lspconfig.nvim" },
    config = { "\27LJ\2\n\v\0\2\2\0\0\0\1K\0\1\0Ê\4\1\0\r\0#\00036\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\1B\1\1\0023\2\4\0009\3\5\0009\3\6\0035\5\a\0=\2\b\5=\1\t\0055\6\26\0005\a\v\0005\b\n\0=\b\f\a5\b\14\0005\t\r\0=\t\15\b=\b\16\a5\b\21\0006\t\17\0009\t\18\t9\t\19\t'\v\20\0+\f\2\0B\t\3\2=\t\22\b=\b\23\a5\b\24\0=\b\25\a=\a\27\6=\6\28\5B\3\2\0019\3\29\0009\3\6\0035\5\30\0=\2\b\5=\1\t\0055\6\31\0=\6 \5B\3\2\0019\3!\0009\3\6\0035\5\"\0=\2\b\5=\1\t\5B\3\2\1K\0\1\0\1\0\0\nvimls\bcmd\1\6\0\0\vclangd\23--background-index\31--suggest-missing-includes\17--clang-tidy\28--header-insertion=iwyu\1\0\0\vclangd\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\bvim\16diagnostics\fglobals\1\0\0\1\3\0\0\bvim\21packer_bootstrap\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\17capabilities\14on_attach\1\0\0\nsetup\vlua_ls\0\25default_capabilities\17cmp_nvim_lsp\14lspconfig\frequire\0" },
    load_after = {
      ["cmp-nvim-lsp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\nÆ\1\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0=\4\b\0035\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\faliases\6o\1\b\0\0\6}\6]\6)\6>\6\"\6'\6`\6q\1\4\0\0\6\"\6'\6`\1\0\4\6s\6]\6a\6>\6p\6)\6b\6}\fkeymaps\1\0\0\1\0\3\vvisual\ass\vchange\asc\vdelete\asd\nsetup\18nvim-surround\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle" },
    config = { "\27LJ\2\nÝ\22\0\0\b\0Z\0n6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0024\3\0\0=\3\5\0025\3\6\0005\4\a\0004\5\3\0005\6\t\0005\a\b\0=\a\n\6>\6\1\5=\5\v\4=\4\f\0035\4\r\0005\5\14\0=\5\15\4=\4\16\3=\3\17\0025\3\18\0005\4\19\0005\5\20\0=\5\21\4=\4\22\0035\4\23\0005\5\24\0=\5\25\0045\5\26\0005\6\27\0=\6\28\0055\6\29\0=\6\30\5=\5\31\4=\4\21\0035\4 \0=\4!\3=\3\"\0025\3#\0=\3$\0025\3%\0004\4\0\0=\4&\3=\3'\0024\3\0\0=\3(\0025\3)\0004\4\0\0=\4*\3=\3+\0025\3,\0005\4-\0=\4\21\3=\3.\0025\3/\0004\4\0\0=\0040\0035\0041\0=\0042\3=\0033\0025\0034\0004\4\0\0=\0045\3=\0036\0025\0037\0=\3\30\0025\0038\0005\0049\0=\4:\0035\4;\0004\5\0\0=\0052\4=\4<\0035\4>\0005\5=\0=\5\15\4=\4?\0035\4@\0005\5A\0005\6C\0005\aB\0=\aD\0065\aE\0=\aF\6=\0062\5=\5G\4=\4H\0035\4I\0=\4J\3=\3K\0025\3L\0=\3M\0025\3N\0=\3O\0025\3P\0005\4Q\0=\4R\3=\3S\0025\3W\0006\4T\0009\4S\0049\4U\0049\4V\4=\4X\3=\3Y\2B\0\2\1K\0\1\0\vnotify\14threshold\1\0\0\tINFO\vlevels\bvim\blog\ntypes\1\0\b\bdev\1\ball\1\vconfig\1\15copy_paste\1\16diagnostics\1\bgit\1\fprofile\1\fwatcher\1\1\0\2\rtruncate\1\venable\1\16live_filter\1\0\2\24always_show_folders\2\vprefix\15[FILTER]: \ntrash\1\0\2\20require_confirm\2\bcmd\14gio trash\factions\16remove_file\1\0\1\17close_window\2\14open_file\18window_picker\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\venable\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\1\0\2\18resize_window\2\17quit_on_open\1\15file_popup\1\0\0\1\0\5\nstyle\fminimal\rrelative\vcursor\brow\3\1\bcol\3\1\vborder\vshadow\15expand_all\1\0\1\25max_folder_discovery\3¬\2\15change_dir\1\0\3\vglobal\1\23restrict_above_cwd\1\venable\2\1\0\1\25use_system_clipboard\2\1\0\4\17show_on_dirs\2\vignore\2\venable\2\ftimeout\3\3\24filesystem_watchers\16ignore_dirs\1\0\2\venable\2\19debounce_delay\0032\ffilters\fexclude\1\4\0\0\t.map\t.dll\a.o\vcustom\1\0\1\rdotfiles\1\16diagnostics\1\0\4\fwarning\bï±\thint\bïª\tinfo\bï\nerror\bï\1\0\3\17show_on_dirs\1\venable\1\19debounce_delay\0032\16system_open\targs\1\0\1\bcmd\5\23ignore_ft_on_setup\24update_focused_file\16ignore_list\1\0\2\16update_root\1\venable\1\23hijack_directories\1\0\2\venable\2\14auto_open\2\rrenderer\18special_files\1\5\0\0\15Cargo.toml\rMakefile\14README.md\14readme.md\vglyphs\bgit\1\0\a\frenamed\bâ\fdeleted\bï\runmerged\bî§\vstaged\bâ\runstaged\bâ\fignored\bâ\14untracked\bâ\vfolder\1\0\b\15empty_open\bï\fsymlink\bï\topen\bî¾\nempty\bï\fdefault\bî¿\15arrow_open\bï¼\17symlink_open\bï\17arrow_closed\bï \1\0\3\rbookmark\bï£\fsymlink\bï\fdefault\bï¥\tshow\1\0\4\tfile\2\bgit\2\17folder_arrow\2\vfolder\2\1\0\4\18symlink_arrow\n â \fpadding\6 \18git_placement\vbefore\18webdev_colors\2\19indent_markers\nicons\1\0\5\vbottom\bâ\titem\bâ\tedge\bâ\tnone\6 \vcorner\bâ\1\0\2\18inline_arrows\2\venable\1\1\0\b\18highlight_git\1\16group_empty\1\17add_trailing\1\24symlink_destination\2\17indent_width\3\2\25root_folder_modifier\a:~\27highlight_opened_files\tnone\14full_name\1\tview\nfloat\20open_win_config\1\0\6\bcol\3\1\rrelative\veditor\brow\3\1\vheight\3\30\nwidth\3\30\vborder\frounded\1\0\2\venable\1\23quit_on_focus_loss\2\rmappings\tlist\bkey\1\0\2\vaction\nclose\tmode\6n\1\2\0\0\n<ESC>\1\0\1\16custom_only\1\1\0\t\21hide_root_folder\1\25centralize_selection\1\vnumber\1\18adaptive_size\1\nwidth\3\30\15signcolumn\byes\19relativenumber\1 preserve_window_proportions\1\tside\tleft\14root_dirs\29ignore_buf_on_tab_change\1\0\18\18open_on_setup\1'hijack_unnamed_buffer_when_opening\1\17hijack_netrw\2\18hijack_cursor\1\25auto_reload_on_write\2\18disable_netrw\1\28create_in_closed_folder\1\27ignore_buffer_on_setup\1\19select_prompts\1\19remove_keymaps\1\14on_attach\fdisable\20respect_buf_cwd\1\23reload_on_bufenter\1\23sync_root_with_cwd\2\24prefer_startup_root\1\fsort_by\tname\16open_on_tab\1\23open_on_setup_file\1\nsetup\14nvim-tree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n£\2\0\0\5\0\14\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0024\3\0\0=\3\6\0025\3\a\0=\3\b\0025\3\t\0=\3\n\0025\3\v\0004\4\0\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\tfold\fdisable\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\19ignore_install\21ensure_installed\1\0\1\17sync_install\2\1\6\0\0\6c\bcpp\bvim\blua\thelp\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["registers.nvim"] = {
    commands = { "Registers" },
    config = { "\27LJ\2\nt\0\0\a\0\b\0\f6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0009\5\3\0B\5\1\2=\5\5\4=\4\a\3B\1\2\1K\0\1\0\14bind_keys\1\0\0\n<C-o>\1\0\0\19apply_register\nsetup\14registers\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\registers.nvim",
    url = "https://github.com/tversteeg/registers.nvim"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\sqlite.lua",
    url = "https://github.com/kkharji/sqlite.lua"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    after = { "dressing.nvim" },
    commands = { "Telescope", "SessionManager" },
    config = { "\27LJ\2\nÂ\a\0\0\t\0.\0P6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0004\5\0\0=\5\a\0045\5\n\0006\6\0\0'\b\b\0B\6\2\0029\6\t\6=\6\v\5=\5\f\4=\4\r\3=\3\15\0025\3\19\0005\4\17\0005\5\16\0=\5\18\4=\4\20\0035\4\22\0005\5\21\0=\5\18\4=\4\23\0035\4\25\0005\5\24\0=\5\18\4=\4\26\0035\4\28\0005\5\27\0=\5\18\4=\4\29\0035\4\31\0005\5\30\0=\5\18\4=\4 \3=\3!\0025\3#\0005\4\"\0004\5\0\0=\5\r\4=\4$\0035\4%\0=\4&\0035\4(\0005\5'\0=\5)\4=\4*\3=\3+\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0,\0'\2$\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0,\0'\2-\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0,\0'\2&\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0,\0'\2*\0B\0\2\1K\0\1\0\17yank_history\19load_extension\15extensions\vaerial\17show_nesting\1\0\0\1\0\3\tjson\2\6_\1\tyaml\2\bfzf\1\0\4\28override_generic_sorter\2\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\17file_browser\1\0\0\1\0\4\nfiles\1\17hijack_netrw\2\vhidden\2\14previewer\1\fpickers\14live_grep\1\0\1\vhidden\2\1\2\0\0\arg\16grep_string\1\0\1\vhidden\2\1\2\0\0\arg\fbuffers\1\0\2\vhidden\2\14previewer\1\1\2\0\0\afd\roldfiles\1\0\2\vhidden\2\14previewer\1\1\2\0\0\afd\15find_files\1\0\0\17find_command\1\0\2\vhidden\2\14previewer\1\1\2\0\0\afd\rdefaults\1\0\0\rmappings\6n\6o\1\0\0\19select_default\22telescope.actions\6i\1\0\0\25file_ignore_patterns\1\0\0\1\17\0\0\n%.map\n%.obj\b%.o\n%.pbi\v%.html\t%.7z\n%.zip\n%.sln\n%.eww\n%.ewp\14%.command\r%.vcproj\n%.dep\b%.s\n%.lst\n%.pbw\nsetup\14telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    commands = { "TodoTelescope" },
    config = { "\27LJ\2\n\t\0\0\6\0001\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\a\0005\4\4\0005\5\5\0=\5\6\4=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0005\5\14\0=\5\6\4=\4\15\0035\4\16\0005\5\17\0=\5\6\4=\4\18\0035\4\19\0005\5\20\0=\5\6\4=\4\21\0035\4\22\0005\5\23\0=\5\6\4=\4\24\3=\3\25\0025\3\26\0=\3\27\0025\3\28\0004\4\0\0=\4\29\3=\3\30\0025\3 \0005\4\31\0=\4!\0035\4\"\0=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4+\3=\3,\0025\3-\0005\4.\0=\4/\3=\0030\2B\0\2\1K\0\1\0\vsearch\targs\1\6\0\0\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\1\0\2\fcommand\arg\fpattern\18\\b(KEYWORDS):\vcolors\ttest\1\3\0\0\15Identifier\f#FF00FF\fdefault\1\3\0\0\15Identifier\f#7C3AED\thint\1\3\0\0\19DiagnosticHint\f#10B981\tinfo\1\3\0\0\19DiagnosticInfo\f#2563EB\fwarning\1\4\0\0\22DiagnosticWarning\15WarningMsg\f#FBBF24\nerror\1\0\0\1\4\0\0\20DiagnosticError\rErrorMsg\f#DC2626\14highlight\fexclude\1\0\t\fpattern\22.*<(KEYWORDS)\\s*:\fkeyword\twide\22multiline_pattern\a^.\14multiline\2\vbefore\5\22multiline_context\3\n\nafter\afg\17max_line_len\3\3\18comments_only\2\14gui_style\1\0\2\afg\tNONE\abg\tBOLD\rkeywords\tTEST\1\4\0\0\fTESTING\vPASSED\vFAILED\1\0\2\ticon\tâ² \ncolor\ttest\tNOTE\1\2\0\0\tINFO\1\0\2\ticon\tï¡§ \ncolor\thint\tPERF\1\4\0\0\nOPTIM\16PERFORMANCE\rOPTIMIZE\1\0\1\ticon\tï \tWARN\1\3\0\0\fWARNING\bXXX\1\0\2\ticon\tï± \ncolor\fwarning\tHACK\1\0\2\ticon\tï \ncolor\fwarning\tTODO\1\0\2\ticon\tï \ncolor\tinfo\bFIX\1\0\0\balt\1\5\0\0\nFIXME\bBUG\nFIXIT\nISSUE\1\0\2\ticon\tï \ncolor\nerror\1\0\3\18sign_priority\3\b\19merge_keywords\2\nsigns\2\nsetup\18todo-comments\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    commands = { "Trouble", "TroubleToggle", "TroubleRefresh" },
    config = { "\27LJ\2\nÎ\5\0\0\5\0\26\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\2B\0\2\1K\0\1\0\nsigns\1\0\5\fwarning\bï©\nother\bï« \nerror\bï\16information\bï\thint\bï µ\14auto_jump\1\2\0\0\20lsp_definitions\16action_keys\16toggle_fold\1\3\0\0\azA\aza\15open_folds\1\3\0\0\azR\azr\16close_folds\1\3\0\0\azM\azm\15jump_close\1\2\0\0\6o\ropen_tab\1\2\0\0\n<c-t>\16open_vsplit\1\2\0\0\n<c-v>\15open_split\1\2\0\0\n<c-x>\tjump\1\3\0\0\t<cr>\n<tab>\1\0\t\rprevious\6k\19toggle_preview\6P\fpreview\6p\nhover\6K\frefresh\6r\nclose\6q\tnext\6j\16toggle_mode\6m\vcancel\n<esc>\1\0\15\16fold_closed\bï \14auto_fold\1\15auto_close\1\vheight\3\15\nwidth\0032\14auto_open\1\25use_diagnostic_signs\1\fpadding\2\nicons\2\ngroup\2\14fold_open\bï¼\17auto_preview\2\rposition\vbottom\17indent_lines\2\tmode\26workspace_diagnostics\nsetup\ftrouble\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    config = { "\27LJ\2\nÓ\2\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\3B\1\2\1K\0\1\0\fkeymaps\1\0\a\6q\tquit\6J\21move_change_next\6p\18enter_diffbuf\6k\14move_prev\6j\14move_next\t<cr>\17action_enter\6K\21move_change_prev\vwindow\1\0\1\rwinblend\3\30\20ignore_filetype\1\a\0\0\rUndotree\17UndotreeDiff\aqf\20TelescopePrompt\18spectre_panel\17tsplayground\1\0\2\vlayout\16left_bottom\15float_diff\2\nsetup\rundotree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\undotree",
    url = "https://github.com/jiaoshijie/undotree"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["vim-vsnip"] = {
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["yanky.nvim"] = {
    config = { "\27LJ\2\nÜ\2\0\0\5\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\2B\0\2\1K\0\1\0\29preserve_cursor_position\1\0\1\fenabled\2\14highlight\1\0\3\ntimer\3ô\3\fon_yank\2\von_put\2\21system_clipboard\1\0\1\19sync_with_ring\2\vpicker\14telescope\1\0\0\vselect\1\0\0\1\0\0\tring\1\0\0\1\0\4\17cancel_event\vupdate\fstorage\nshada\19history_length\3d!sync_with_numbered_registers\2\nsetup\nyanky\frequire\0" },
    loaded = true,
    path = "C:\\Users\\su-25\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\yanky.nvim",
    url = "https://github.com/gbprod/yanky.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
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

-- Config for: aerial.nvim
time([[Config for aerial.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\1\1\0\0\0\1K\0\1\0\v\0\1\1\0\0\0\1K\0\1\0\15\0\3\4\0\0\0\2+\3\2\0L\3\2\0\v\0\3\3\0\0\0\1L\1\2\0\v\0\2\2\0\0\0\1L\0\2\0Â\16\1\0\5\0-\00056\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0034\4\0\0=\4\t\3=\3\n\0024\3\0\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0024\3\0\0=\3\16\0025\3\17\0004\4\0\0=\4\18\3=\3\19\0023\3\20\0=\3\21\0023\3\22\0=\3\23\0023\3\24\0=\3\25\0023\3\26\0=\3\27\0025\3\28\0=\3\29\0025\3\30\0005\4\31\0=\4 \0033\4!\0=\4\"\3=\3#\0025\3$\0004\4\0\0=\4%\3=\3&\0025\3'\0=\3(\0025\3)\0=\3*\0025\3+\0=\3,\2B\0\2\1K\0\1\0\bman\1\0\1\17update_delay\3¬\2\rmarkdown\1\0\1\17update_delay\3¬\2\15treesitter\1\0\1\17update_delay\3¬\2\blsp\rpriority\1\0\3\31diagnostics_trigger_update\2\17update_delay\3¬\2\23update_when_errors\2\nfloat\roverride\0\15min_height\1\3\0\0\3\b\4³æÌ\t³æý\3\1\0\3\15max_height\4Í³æ\fÌ³ÿ\3\rrelative\vcursor\vborder\frounded\vguides\1\0\4\rmid_item\vââ\15nested_top\tâ \14last_item\vââ\15whitespace\a  \25post_add_all_symbols\0\22post_parse_symbol\0\21on_first_symbols\0\14on_attach\0\vignore\14filetypes\1\0\3\rbuftypes\fspecial\21unlisted_buffers\1\rwintypes\fspecial\nicons\16filter_kind\1\t\0\0\nClass\16Constructor\tEnum\rFunction\14Interface\vModule\vMethod\vStruct\fkeymaps\1\0\31\azA\"actions.tree_toggle_recursive\6H!actions.tree_close_recursive\azc\23actions.tree_close\azR\26actions.tree_open_all\azO actions.tree_open_recursive\azm%actions.tree_decrease_fold_level\6L actions.tree_open_recursive\azo\22actions.tree_open\n<ESC>\18actions.close\6O\"actions.tree_toggle_recursive\6l\24actions.tree_toggle\6k\20actions.prev_up\6?\22actions.show_help\6j\20actions.next_up\azC!actions.tree_close_recursive\azr%actions.tree_increase_fold_level\6}\17actions.next\6h\23actions.tree_close\6{\17actions.prev\t<CR>\17actions.jump\n<C-k>\26actions.up_and_scroll\n<C-j>\28actions.down_and_scroll\azM\27actions.tree_close_all\n<C-s>\23actions.jump_split\azX\28actions.tree_sync_folds\n<C-v>\24actions.jump_vsplit\18<2-LeftMouse>\17actions.jump\6p\19actions.scroll\ag?\22actions.show_help\azx\28actions.tree_sync_folds\aza\24actions.tree_toggle\27close_automatic_events\vlayout\rwin_opts\14max_width\1\0\4\14placement\vwindow\22preserve_equality\1\22default_direction\17prefer_right\14min_width\3\n\1\3\0\0\3(\4³æÌ\t³¦þ\3\rbackends\1\0\17\22disable_max_lines\3N\18post_jump_cmd\15normal! zz\19open_automatic\1\14nerd_font\tauto\23link_tree_to_folds\2\23link_folds_to_tree\1\17manage_folds\1\14lazy_load\2\22highlight_on_jump\3¬\2\23highlight_on_hover\1\22highlight_closest\2\19highlight_mode\16split_width\21disable_max_size\3z\16show_guides\1\18update_events\28TextChanged,InsertLeave\20close_on_select\1\16attach_mode\vwindow\1\5\0\0\15treesitter\blsp\rmarkdown\bman\nsetup\vaerial\frequire\0", "config", "aerial.nvim")
time([[Config for aerial.nvim]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
try_loadstring("\27LJ\2\n\4\0\0\a\0\20\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\b\0006\4\3\0009\4\4\0049\4\5\4'\6\6\0B\4\2\2'\5\a\0&\4\5\4=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0034\4\0\0=\4\14\3=\3\16\0024\3\0\0=\3\17\0024\3\0\0=\3\18\0024\3\0\0=\3\19\2B\0\2\1K\0\1\0\vgroups\nspecs\rpalettes\foptions\1\0\0\fmodules\finverse\1\0\3\vvisual\1\16match_paren\1\vsearch\1\vstyles\1\0\n\rkeywords\tNONE\14variables\tNONE\fstrings\tNONE\14operators\tNONE\fnumbers\tNONE\14constants\tNONE\14functions\tNONE\17conditionals\tNONE\rcomments\tNONE\ntypes\tNONE\17compile_path\1\0\5\19module_default\2\17dim_inactive\1\20terminal_colors\2\16transparent\1\24compile_file_suffix\14_compiled\14/nightfox\ncache\fstdpath\afn\bvim\nsetup\rnightfox\frequire\0", "config", "nightfox.nvim")
time([[Config for nightfox.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n¥\r\0\0\t\0)\1L6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0029\2\3\0019\2\a\0024\3\a\0009\4\b\1'\6\t\0'\a\n\0'\b\v\0B\4\4\2>\4\1\0039\4\b\1'\6\f\0'\a\r\0'\b\14\0B\4\4\2>\4\2\0039\4\b\1'\6\15\0'\a\16\0'\b\17\0B\4\4\2>\4\3\0039\4\b\1'\6\18\0'\a\19\0'\b\20\0B\4\4\2>\4\4\0039\4\b\1'\6\21\0'\a\22\0'\b\23\0B\4\4\2>\4\5\0039\4\b\1'\6\24\0'\a\25\0'\b\26\0B\4\4\0?\4\0\0=\3\5\0026\2\27\0009\2\28\2'\4\29\0B\2\2\2\18\5\2\0009\3\30\2'\6\31\0B\3\3\2\18\6\2\0009\4 \2B\4\2\0019\4\3\0019\4!\4=\3\5\0049\4\"\0019\4#\4+\5\2\0=\5$\0046\4%\0009\4&\4'\6'\0B\4\2\0019\4(\0009\6\"\1B\4\2\1K\0\1\0\nsetup)autocmd User AlphaReady echo 'ready'\bcmd\bvim\14noautocmd\topts\vconfig\vfooter\nclose\a*a\tread\ffortune\npopen\aio\23:TodoTelescope<CR>\26ï¢  Search Todo tree\17<leader> f t\27:Telescope keymaps<CR>\24ï  Search keymaps\17<leader> f m\26:Telescope aerial<CR>!îª³  Search Function outline\17<leader> f o\30:Telescope find_files<CR>\22î¬¨  Search Files\17<leader> f f :Telescope file_browser<CR>\24î¯  Folder Browser\17<leader> f p%:SessionManager load_session<CR>\22îª  Load Session\17<leader> s l\vbutton\fbuttons\1\a\0\0\1 ââââ   âââ ââââââââ âââââââ  âââ   âââ âââ ââââ   ââââ\1 âââââ  âââ âââââââââââââââââ âââ   âââ âââ âââââ âââââ\1 ââââââ âââ ââââââ  âââ   âââ âââ   âââ âââ âââââââââââ\1 ââââââââââ ââââââ  âââ   âââ ââââ ââââ âââ âââââââââââ\1 âââ ââââââ âââââââââââââââââ  âââââââ  âââ âââ âââ âââ\1 âââ  âââââ ââââââââ âââââââ    âââââ   âââ âââ     âââ\bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\rÀ\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: impatient.nvim
time([[Config for impatient.nvim]], true)
try_loadstring("\27LJ\2\ng\0\0\4\0\5\0\f6\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0016\1\0\0'\3\3\0B\1\2\0029\1\4\0014\3\0\0B\1\2\1K\0\1\0\nsetup\rfiletype\19enable_profile\14impatient\frequire\0", "config", "impatient.nvim")
time([[Config for impatient.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n\a\0\0\a\0(\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0004\5\0\0=\5\t\0044\5\0\0=\5\n\4=\4\v\0034\4\0\0=\4\f\0035\4\r\0=\4\14\3=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0034\4\3\0005\5\22\0005\6\23\0=\6\24\5>\5\1\4=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\3=\3 \0025\3!\0004\4\0\0=\4\19\0034\4\0\0=\4\21\0035\4\"\0=\4\25\0035\4#\0=\4\27\0034\4\0\0=\4\29\0034\4\0\0=\4\31\3=\3$\0024\3\0\0=\3%\0024\3\0\0=\3\n\0024\3\0\0=\3&\0024\3\0\0=\3'\2B\0\2\1K\0\1\0\15extensions\20inactive_winbar\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\fsymbols\1\0\3\rreadonly\b[-]\funnamed\14[No Name]\rmodified\b[+]\1\2\3\0\rfilename\20shorting_target\3(\16file_status\2\tpath\3\1\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\frefresh\1\0\3\ftabline\3è\a\vwinbar\3è\a\15statusline\3è\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\0\23section_separators\1\0\2\nright\bî²\tleft\bî°\25component_separators\1\0\2\nright\bî³\tleft\bî±\1\0\4\ntheme\tauto\18icons_enabled\2\17globalstatus\1\25always_divide_middle\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: yanky.nvim
time([[Config for yanky.nvim]], true)
try_loadstring("\27LJ\2\nÜ\2\0\0\5\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\2B\0\2\1K\0\1\0\29preserve_cursor_position\1\0\1\fenabled\2\14highlight\1\0\3\ntimer\3ô\3\fon_yank\2\von_put\2\21system_clipboard\1\0\1\19sync_with_ring\2\vpicker\14telescope\1\0\0\vselect\1\0\0\1\0\0\tring\1\0\0\1\0\4\17cancel_event\vupdate\fstorage\nshada\19history_length\3d!sync_with_numbered_registers\2\nsetup\nyanky\frequire\0", "config", "yanky.nvim")
time([[Config for yanky.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'DiffviewOpen', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewOpen', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewOpen ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewClose', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewClose', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewClose ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Telescope', function(cmdargs)
          require('packer.load')({'telescope.nvim'}, { cmd = 'Telescope', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'telescope.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Telescope ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'SessionManager', function(cmdargs)
          require('packer.load')({'telescope.nvim'}, { cmd = 'SessionManager', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'telescope.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('SessionManager ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Registers', function(cmdargs)
          require('packer.load')({'registers.nvim'}, { cmd = 'Registers', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'registers.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Registers ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Trouble', function(cmdargs)
          require('packer.load')({'trouble.nvim'}, { cmd = 'Trouble', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'trouble.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Trouble ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TroubleToggle', function(cmdargs)
          require('packer.load')({'trouble.nvim'}, { cmd = 'TroubleToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'trouble.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TroubleToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TroubleRefresh', function(cmdargs)
          require('packer.load')({'trouble.nvim'}, { cmd = 'TroubleRefresh', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'trouble.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TroubleRefresh ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TodoTelescope', function(cmdargs)
          require('packer.load')({'todo-comments.nvim'}, { cmd = 'TodoTelescope', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'todo-comments.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TodoTelescope ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'NvimTreeToggle', function(cmdargs)
          require('packer.load')({'nvim-tree.lua'}, { cmd = 'NvimTreeToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-tree.lua'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NvimTreeToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'StartupTime', function(cmdargs)
          require('packer.load')({'vim-startuptime'}, { cmd = 'StartupTime', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-startuptime'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('StartupTime ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'lspkind-nvim', 'mason.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'nvim-comment', 'nvim-surround', 'hop.nvim', 'nvim-treesitter', 'indent-blankline.nvim'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
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
