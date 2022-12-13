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
  ["diffview.nvim"] = {
    commands = { "DiffviewOpen", "DiffviewClose" },
    config = { "\27LJ\2\n�?\0\0\n\0�\2\2�\0046\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0005\4\5\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\f\0005\5\v\0=\5\r\0045\5\14\0=\5\15\0045\5\16\0=\5\17\4=\4\18\0035\4\19\0005\5\20\0=\5\21\0045\5\22\0004\6\0\0=\6\23\5=\5\24\4=\4\25\0035\4\31\0005\5\27\0005\6\26\0=\6\28\0055\6\29\0=\6\30\5=\5 \0045\5!\0004\6\0\0=\6\23\5=\5\24\4=\4\"\0035\4$\0005\5#\0004\6\0\0=\6\23\5=\5\24\4=\4%\0035\4&\0004\5\0\0=\5'\0044\5\0\0=\5(\4=\4)\0034\4\0\0=\4*\0035\4+\0004\5\16\0005\6,\0009\a-\0>\a\3\0065\a.\0>\a\4\6>\6\1\0055\6/\0009\a0\0>\a\3\0065\a1\0>\a\4\6>\6\2\0055\0062\0009\a3\0>\a\3\0065\a4\0>\a\4\6>\6\3\0055\0065\0009\a6\0>\a\3\0065\a7\0>\a\4\6>\6\4\0055\0068\0009\a9\0>\a\3\0065\a:\0>\a\4\6>\6\5\0055\6;\0009\a<\0>\a\3\0065\a=\0>\a\4\6>\6\6\0055\6>\0009\a?\0>\a\3\0065\a@\0>\a\4\6>\6\a\0055\6A\0009\aB\0>\a\3\0065\aC\0>\a\4\6>\6\b\0055\6D\0009\aE\0>\a\3\0065\aF\0>\a\4\6>\6\t\0055\6G\0009\aH\0>\a\3\0065\aI\0>\a\4\6>\6\n\0055\6J\0009\aK\0'\tL\0B\a\2\2>\a\3\0065\aM\0>\a\4\6>\6\v\0055\6N\0009\aK\0'\tO\0B\a\2\2>\a\3\0065\aP\0>\a\4\6>\6\f\0055\6Q\0009\aK\0'\tR\0B\a\2\2>\a\3\0065\aS\0>\a\4\6>\6\r\0055\6T\0009\aK\0'\tU\0B\a\2\2>\a\3\0065\aV\0>\a\4\6>\6\14\0055\6W\0009\aK\0'\tX\0B\a\2\2>\a\3\0065\aY\0>\a\4\6>\6\15\5=\5\18\0044\5\3\0005\6Z\0009\a[\0005\t\\\0B\a\2\2>\a\3\0065\a]\0>\a\4\6>\6\1\5=\5^\0044\5\3\0005\6_\0009\a[\0005\t`\0B\a\2\2>\a\3\0065\aa\0>\a\4\6>\6\1\5=\5b\0044\5\4\0005\6d\0005\ac\0>\a\1\0069\ae\0'\tL\0B\a\2\2>\a\3\0065\af\0>\a\4\6>\6\1\0055\6h\0005\ag\0>\a\1\0069\ae\0'\tO\0B\a\2\2>\a\3\0065\ai\0>\a\4\6>\6\2\0055\6j\0009\a[\0005\tk\0B\a\2\2>\a\3\0065\al\0>\a\4\6>\6\3\5=\5m\0044\5\5\0005\6o\0005\an\0>\a\1\0069\ae\0'\tR\0B\a\2\2>\a\3\0065\ap\0>\a\4\6>\6\1\0055\6r\0005\aq\0>\a\1\0069\ae\0'\tL\0B\a\2\2>\a\3\0065\as\0>\a\4\6>\6\2\0055\6u\0005\at\0>\a\1\0069\ae\0'\tO\0B\a\2\2>\a\3\0065\av\0>\a\4\6>\6\3\0055\6w\0009\a[\0005\tx\0B\a\2\2>\a\3\0065\ay\0>\a\4\6>\6\4\5=\5z\0044\5\29\0005\6{\0009\a|\0>\a\3\0065\a}\0>\a\4\6>\6\1\0055\6~\0009\a|\0>\a\3\0065\a\127\0>\a\4\6>\6\2\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\3\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\4\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\5\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\6\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\a\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\b\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\t\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\n\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\v\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\f\0055\6�\0009\a�\0*\t\0\0B\a\2\2>\a\3\0065\a�\0>\a\4\6>\6\r\0055\6�\0009\a�\0*\t\1\0B\a\2\2>\a\3\0065\a�\0>\a\4\6>\6\14\0055\6�\0009\a-\0>\a\3\0065\a�\0>\a\4\6>\6\15\0055\6�\0009\a0\0>\a\3\0065\a�\0>\a\4\6>\6\16\0055\6�\0009\a3\0>\a\3\0065\a�\0>\a\4\6>\6\17\0055\6�\0009\a6\0>\a\3\0065\a�\0>\a\4\6>\6\18\0055\6�\0009\a9\0>\a\3\0065\a�\0>\a\4\6>\6\19\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\20\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\21\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\22\0055\6�\0009\a<\0>\a\3\0065\a�\0>\a\4\6>\6\23\0055\6�\0009\a?\0>\a\3\0065\a�\0>\a\4\6>\6\24\0055\6�\0009\aB\0>\a\3\0065\a�\0>\a\4\6>\6\25\0055\6�\0009\aE\0>\a\3\0065\a�\0>\a\4\6>\6\26\0055\6�\0009\aH\0>\a\3\0065\a�\0>\a\4\6>\6\27\0055\6�\0009\a[\0'\t\25\0B\a\2\2>\a\3\0065\a�\0>\a\4\6>\6\28\5=\5\25\0044\5\25\0005\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\1\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\2\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\3\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\4\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\5\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\6\0055\6�\0009\a|\0>\a\3\0065\a�\0>\a\4\6>\6\a\0055\6�\0009\a|\0>\a\3\0065\a�\0>\a\4\6>\6\b\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\t\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\n\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\v\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\f\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\r\0055\6�\0009\a�\0*\t\0\0B\a\2\2>\a\3\0065\a�\0>\a\4\6>\6\14\0055\6�\0009\a�\0*\t\1\0B\a\2\2>\a\3\0065\a�\0>\a\4\6>\6\15\0055\6�\0009\a-\0>\a\3\0065\a�\0>\a\4\6>\6\16\0055\6�\0009\a0\0>\a\3\0065\a�\0>\a\4\6>\6\17\0055\6�\0009\a3\0>\a\3\0065\a�\0>\a\4\6>\6\18\0055\6�\0009\a6\0>\a\3\0065\a�\0>\a\4\6>\6\19\0055\6�\0009\a9\0>\a\3\0065\a�\0>\a\4\6>\6\20\0055\6�\0009\a<\0>\a\3\0065\a�\0>\a\4\6>\6\21\0055\6�\0009\a?\0>\a\3\0065\a�\0>\a\4\6>\6\22\0055\6�\0009\aB\0>\a\3\0065\a�\0>\a\4\6>\6\23\0055\6�\0009\a[\0'\t\"\0B\a\2\2>\a\3\0065\a�\0>\a\4\6>\6\24\5=\5\"\0044\5\4\0005\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\1\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\2\0055\6�\0009\a[\0'\t�\0B\a\2\2>\a\3\0065\a�\0>\a\4\6>\6\3\5=\5�\0044\5\3\0005\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\1\0055\6�\0009\a�\0>\a\3\0065\a�\0>\a\4\6>\6\2\5'\6\0\1<\5\6\4'\5\1\1<\4\5\3B\1\2\1K\0\1\0\fkeymaps\15help_panel\1\0\1\tdesc\20Close help menu\1\3\0\0\6n\n<esc>\1\0\1\tdesc\20Close help menu\1\3\0\0\6n\6q\1\0\1\tdesc\24Open the help panel\17option_panel\1\3\0\0\6n\ag?\1\0\1\tdesc\20Close the panel\nclose\1\3\0\0\6n\6q\1\0\1\tdesc\30Change the current option\1\3\0\0\6n\n<tab>\1\0\1\tdesc\24Open the help panel\1\3\0\0\6n\ag?\1\0\1\tdesc\28Cycle available layouts\1\3\0\0\6n\vg<C-x>\1\0\1\tdesc\26Toggle the file panel\1\3\0\0\6n\14<leader>b\1\0\1\tdesc\"Bring focus to the file panel\1\3\0\0\6n\14<leader>e\1\0\1\tdesc#Open the file in a new tabpage\1\3\0\0\6n\f<C-w>gf\1\0\1\tdesc!Open the file in a new split\1\3\0\0\6n\15<C-w><C-f>\1\0\1\tdesc9Open the file in a new split in the previous tabpage\1\3\0\0\6n\agf\1\0\1\tdesc(Open the diff for the previous file\1\3\0\0\6n\f<s-tab>\1\0\1\tdesc$Open the diff for the next file\1\3\0\0\6n\n<tab>\1\0\1\tdesc\25Scroll the view down\1\3\0\0\6n\n<c-f>\1\0\1\tdesc\23Scroll the view up\1\3\0\0\6n\n<c-b>\1\0\1\tdesc*Open the diff for the selected entry.\1\3\0\0\6n\18<2-LeftMouse>\1\0\1\tdesc*Open the diff for the selected entry.\1\3\0\0\6n\6o\1\0\1\tdesc*Open the diff for the selected entry.\1\3\0\0\6n\t<cr>\1\0\1\tdesc1Bring the cursor to the previous file entry.\1\3\0\0\6n\t<up>\1\0\1\tdesc1Bring the cursor to the previous file entry.\1\3\0\0\6n\6k\1\0\1\tdesc,Bring the cursor to the next file entry\1\3\0\0\6n\v<down>\1\0\1\tdesc,Bring the cursor to the next file entry\1\3\0\0\6n\6j\1\0\1\tdesc\23Collapse all folds\20close_all_folds\1\3\0\0\6n\azM\1\0\1\tdesc\21Expand all folds\19open_all_folds\1\3\0\0\6n\azR\1\0\1\tdesc\24Show commit details\1\3\0\0\6n\6L\1\0\1\tdesc7Copy the commit hash of the entry under the cursor\14copy_hash\1\3\0\0\6n\6y\1\0\1\tdesc2Open the entry under the cursor in a diffview\21open_in_diffview\1\3\0\0\6n\f<C-A-d>\1\0\1\tdesc\26Open the option panel\foptions\1\3\0\0\6n\ag!\1\0\1\tdesc\24Open the help panel\1\3\0\0\6n\ag?\1\0\1\tdesc\28Go to the next conflict\1\3\0\0\6n\a]x\1\0\1\tdesc Go to the previous conflict\1\3\0\0\6n\a[x\1\0\1\tdesc\28Cycle available layouts\1\3\0\0\6n\vg<C-x>\1\0\1\tdesc\26Toggle the file panel\1\3\0\0\6n\14<leader>b\1\0\1\tdesc\"Bring focus to the file panel\1\3\0\0\6n\14<leader>e\1\0\1\tdesc/Update stats and entries in the file list.\18refresh_files\1\3\0\0\6n\6R\1\0\1\tdesc8Flatten empty subdirectories in tree listing style.\24toggle_flatten_dirs\1\3\0\0\6n\6f\1\0\1\tdesc+Toggle between 'list' and 'tree' views\18listing_style\1\3\0\0\6n\6i\1\0\1\tdesc#Open the file in a new tabpage\1\3\0\0\6n\f<C-w>gf\1\0\1\tdesc!Open the file in a new split\1\3\0\0\6n\15<C-w><C-f>\1\0\1\tdesc9Open the file in a new split in the previous tabpage\1\3\0\0\6n\agf\1\0\1\tdesc(Open the diff for the previous file\1\3\0\0\6n\f<s-tab>\1\0\1\tdesc$Open the diff for the next file\1\3\0\0\6n\n<tab>\1\0\1\tdesc\25Scroll the view down\1\3\0\0\6n\n<c-f>\1\0\1\tdesc\23Scroll the view up\16scroll_view\1\3\0\0\6n\n<c-b>\1\0\1\tdesc\31Open the commit log panel.\20open_commit_log\1\3\0\0\6n\6L\1\0\1\tdesc1Restore entry to the state on the left side.\18restore_entry\1\3\0\0\6n\6X\1\0\1\tdesc\25Unstage all entries.\16unstage_all\1\3\0\0\6n\6U\1\0\1\tdesc\23Stage all entries.\14stage_all\1\3\0\0\6n\6S\1\0\1\tdesc(Stage / unstage the selected entry.\23toggle_stage_entry\1\3\0\0\6n\6-\1\0\1\tdesc*Open the diff for the selected entry.\1\3\0\0\6n\18<2-LeftMouse>\1\0\1\tdesc*Open the diff for the selected entry.\1\3\0\0\6n\6o\1\0\1\tdesc*Open the diff for the selected entry.\17select_entry\1\3\0\0\6n\t<cr>\1\0\1\tdesc1Bring the cursor to the previous file entry.\1\3\0\0\6n\t<up>\1\0\1\tdesc1Bring the cursor to the previous file entry.\15prev_entry\1\3\0\0\6n\6k\1\0\1\tdesc,Bring the cursor to the next file entry\1\3\0\0\6n\v<down>\1\0\1\tdesc,Bring the cursor to the next file entry\15next_entry\1\3\0\0\6n\6j\ndiff4\1\0\1\tdesc\24Open the help panel\1\3\0\0\tview\ndiff4\1\3\0\0\6n\ag?\1\0\1\tdesc=Obtain the diff hunk from the THEIRS version of the file\1\3\0\0\0\b3do\1\3\0\0\6n\6x\1\0\1\tdesc;Obtain the diff hunk from the OURS version of the file\1\3\0\0\0\b2do\1\3\0\0\6n\6x\1\0\1\tdesc;Obtain the diff hunk from the BASE version of the file\1\3\0\0\0\b1do\1\3\0\0\6n\6x\ndiff3\1\0\1\tdesc\24Open the help panel\1\3\0\0\tview\ndiff3\1\3\0\0\6n\ag?\1\0\1\tdesc=Obtain the diff hunk from the THEIRS version of the file\1\3\0\0\0\b3do\1\3\0\0\6n\6x\1\0\1\tdesc;Obtain the diff hunk from the OURS version of the file\fdiffget\1\3\0\0\0\b2do\1\3\0\0\6n\6x\ndiff2\1\0\1\tdesc\24Open the help panel\1\3\0\0\tview\ndiff2\1\3\0\0\6n\ag?\ndiff1\1\0\1\tdesc\24Open the help panel\1\3\0\0\tview\ndiff1\thelp\1\3\0\0\6n\ag?\1\0\1\tdesc\31Delete the conflict region\tnone\1\3\0\0\6n\adx\1\0\1\tdesc*Choose all the versions of a conflict\ball\1\3\0\0\6n\15<leader>ca\1\0\1\tdesc*Choose the BASE version of a conflict\tbase\1\3\0\0\6n\15<leader>cb\1\0\1\tdesc,Choose the THEIRS version of a conflict\vtheirs\1\3\0\0\6n\15<leader>ct\1\0\1\tdesc*Choose the OURS version of a conflict\tours\20conflict_choose\1\3\0\0\6n\15<leader>co\1\0\1\tdesc1In the merge-tool: jump to the next conflict\18next_conflict\1\3\0\0\6n\a]x\1\0\1\tdesc5In the merge-tool: jump to the previous conflict\18prev_conflict\1\3\0\0\6n\a[x\1\0\1\tdesc%Cycle through available layouts.\17cycle_layout\1\3\0\0\6n\vg<C-x>\1\0\1\tdesc\27Toggle the file panel.\17toggle_files\1\3\0\0\6n\14<leader>b\1\0\1\tdesc\"Bring focus to the file panel\16focus_files\1\3\0\0\6n\14<leader>e\1\0\1\tdesc#Open the file in a new tabpage\18goto_file_tab\1\3\0\0\6n\f<C-w>gf\1\0\1\tdesc!Open the file in a new split\20goto_file_split\1\3\0\0\6n\15<C-w><C-f>\1\0\1\tdesc9Open the file in a new split in the previous tabpage\14goto_file\1\3\0\0\6n\agf\1\0\1\tdesc(Open the diff for the previous file\22select_prev_entry\1\3\0\0\6n\f<s-tab>\1\0\1\tdesc$Open the diff for the next file\22select_next_entry\1\3\0\0\6n\n<tab>\1\0\1\21disable_defaults\1\nhooks\17default_args\24DiffviewFileHistory\17DiffviewOpen\1\0\0\21commit_log_panel\1\0\0\1\0\0\23file_history_panel\1\0\2\vheight\3\16\rposition\vbottom\16log_options\1\0\0\15multi_file\1\0\1\16diff_merges\17first-parent\16single_file\1\0\0\1\0\1\16diff_merges\rcombined\15file_panel\15win_config\rwin_opts\1\0\2\nwidth\3#\rposition\tleft\17tree_options\1\0\2\20folder_statuses\16only_folded\17flatten_dirs\2\1\0\1\18listing_style\ttree\tview\17file_history\1\0\1\vlayout\21diff2_horizontal\15merge_tool\1\0\2\24disable_diagnostics\2\vlayout\21diff3_horizontal\fdefault\1\0\0\1\0\1\vlayout\21diff2_horizontal\nsigns\1\0\3\16fold_closed\b\14fold_open\b\tdone\b✓\nicons\1\0\2\16folder_open\b\18folder_closed\b\fgit_cmd\1\2\0\0\bgit\1\0\5\16watch_index\2\20show_help_hints\2\14use_icons\2\21enhanced_diff_hl\1\18diff_binaries\1\nsetup\rdiffview\21diffview.actions\frequire\1����\v\1����\3\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
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
    config = { "\27LJ\2\n�\1\0\1\4\0\n\0\f5\1\5\0005\2\1\0009\3\0\0=\3\2\0029\3\3\0=\3\4\2=\2\6\0015\2\a\0=\2\b\0014\2\0\0=\2\t\1L\1\2\0\fTSField\19DiagnosticHint\1\0\1\tlink\30LspDiagnosticsDefaultHint\fhtmlTag\1\0\0\asp\thint\afg\1\0\2\nstyle\14underline\abg\f#282c34\bred�\2\1\0\5\0\16\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0023\3\b\0=\3\t\2B\0\2\0016\0\0\0'\2\n\0B\0\2\0029\0\2\0005\2\14\0005\3\f\0005\4\v\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\roverride\1\0\2\16color_icons\2\fdefault\2\bzsh\1\0\0\1\0\4\ncolor\f#428850\16cterm_color\a65\ticon\b\tname\bZsh\22nvim-web-devicons\14overrides\0\vcolors\1\0\2\thint\vorange\nerror\f#ff0000\rsidebars\1\5\0\0\aqf\15vista_kind\rterminal\vpacker\1\0\2\19function_style\vitalic\16theme_style\tdark\nsetup\17github-theme\frequire\0" },
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
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\4\0\v\0\0256\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0009\0\3\0\18\2\0\0009\0\4\0'\3\5\0B\0\3\0016\0\0\0009\0\1\0009\0\3\0\18\2\0\0009\0\4\0'\3\6\0B\0\3\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0005\2\n\0B\0\2\1K\0\1\0\1\0\3\31show_current_context_start\2\25show_current_context\2\25space_char_blankline\6 \nsetup\21indent_blankline\frequire\feol:↴\14space:⋅\vappend\14listchars\tlist\bopt\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n�\a\0\0\6\0\26\0!6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\r\0005\5\f\0=\5\14\0045\5\15\0=\5\16\4=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0034\4\0\0=\4\24\0034\4\0\0=\4\25\3B\1\2\0019\1\2\0B\1\1\1K\0\1\0\24server_filetype_map\16custom_kind\17show_outline\1\0\b\17auto_preview\1\17win_position\nright\rjump_key\6o\17auto_refresh\2\14virt_text\b┃\15auto_enter\2\14win_width\3<\rwin_with\5\27definition_action_keys\1\0\5\tquit\6q\tedit\v<C-c>o\nsplit\v<C-c>i\ttabe\v<C-c>t\vvsplit\v<C-c>v\21code_action_keys\1\0\2\tquit\6q\texec\t<CR>\23finder_action_keys\tquit\1\3\0\0\6q\n<ESC>\topen\1\0\3\nsplit\6i\ttabe\6t\vvsplit\6s\1\3\0\0\6o\t<CR>\17finder_icons\1\0\3\tlink\n  \bdef\n  \bref\t諭 \26code_action_lightbulb\1\0\a\18sign_priority\3\20\tsign\2\22cache_code_action\2\21enable_in_insert\2\venable\2\16update_time\3�\1\17virtual_text\2\22diagnostic_header\1\5\0\0\t \t \t \tﴞ \17move_in_saga\1\0\2\tnext\n<C-n>\tprev\n<C-p>\1\0\t\22max_preview_lines\3\n\24preview_lines_above\3\0\21rename_in_select\2\23rename_action_quit\n<C-c>\18saga_winblend\3\0\17border_style\frounded\27finder_request_timeout\3�\v\29code_action_num_shortcut\2\21code_action_icon\t💡\18init_lsp_saga\flspsaga\frequire\0" },
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
    config = { "\27LJ\2\n�\6\0\0\3\0\31\0O6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\0\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\5\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\1\0'\1\n\0=\1\t\0006\0\0\0009\0\1\0)\1\0\0=\1\v\0006\0\0\0009\0\1\0'\1\b\0=\1\f\0006\0\0\0009\0\1\0005\1\14\0004\2\0\0=\2\15\0014\2\0\0=\2\16\0014\2\0\0=\2\17\0014\2\0\0=\2\18\0014\2\0\0=\2\19\0014\2\0\0=\2\20\0014\2\0\0=\2\21\1=\1\r\0006\0\0\0009\0\1\0'\1\b\0=\1\22\0006\0\0\0009\0\1\0'\1\b\0=\1\23\0006\0\0\0009\0\1\0'\1\b\0=\1\24\0006\0\0\0009\0\1\0'\1\26\0=\1\25\0006\0\0\0009\0\1\0005\1\28\0=\1\27\0006\0\0\0009\0\1\0'\1\30\0=\1\29\0K\0\1\0\nlight\15mkdp_theme\1\4\0\0\rmarkdown\amd\aMD\19mkdp_filetypes\18「${name}」\20mkdp_page_title\14mkdp_port\23mkdp_highlight_css\22mkdp_markdown_css\btoc\23flowchart_diagrams\22sequence_diagrams\tmaid\buml\nkatex\tmkit\1\0\5\19hide_yaml_meta\3\1\21sync_scroll_type\vmiddle\24disable_sync_scroll\3\0\21disable_filename\3\0\21content_editable\1\25mkdp_preview_options\21mkdp_browserfunc\26mkdp_echo_preview_url\vchrome\17mkdp_browser\5\17mkdp_open_ip\27mkdp_open_to_the_world\28mkdp_command_for_global\22mkdp_refresh_slow\20mkdp_auto_close\20mkdp_auto_start\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\nz\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\0\1\4\0\0\16sumneko_lua\vclangd\nvimls\nsetup\20mason-lspconfig\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\aui\1\0\0\nicons\1\0\0\1\0\3\20package_pending\b➜\22package_installed\b✓\24package_uninstalled\b✗\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neovim-session-manager"] = {
    after = { "telescope.nvim" },
    commands = { "SessionManager" },
    config = { "\27LJ\2\n�\3\0\0\n\0\20\0 6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\n\0\18\6\0\0009\4\4\0006\a\5\0009\a\6\a9\a\a\a'\t\b\0B\a\2\2'\b\t\0B\4\4\2=\4\v\0036\4\0\0'\6\f\0B\4\2\0029\4\r\0049\4\14\4=\4\15\0034\4\0\0=\4\16\0035\4\17\0=\4\18\0034\4\0\0=\4\19\3B\1\2\1K\0\1\0\29autosave_ignore_buftypes\30autosave_ignore_filetypes\1\2\0\0\14gitcommit\25autosave_ignore_dirs\18autoload_mode\rDisabled\17AutoloadMode\27session_manager.config\17sessions_dir\1\0\6\29autosave_only_in_session\1\19colon_replacer\a++\18path_replacer\a__\20max_path_length\3P\31autosave_ignore_not_normal\2\26autosave_last_session\2\rsessions\tdata\fstdpath\afn\bvim\bnew\nsetup\20session_manager\17plenary.path\frequire\0" },
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
    config = { "\27LJ\2\n�\22\0\0\b\0W\0m6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0024\3\0\0=\3\5\0025\3\6\0005\4\a\0004\5\5\0005\6\b\0>\6\1\0055\6\n\0005\a\t\0=\a\v\6>\6\2\0055\6\f\0>\6\3\0055\6\14\0005\a\r\0=\a\v\6>\6\4\5=\5\15\4=\4\16\0035\4\17\0005\5\18\0=\5\19\4=\4\20\3=\3\21\0025\3\22\0005\4\23\0005\5\24\0=\5\25\4=\4\26\0035\4\27\0005\5\28\0=\5\29\0045\5\30\0005\6\31\0=\6 \0055\6!\0=\6\"\5=\5#\4=\4\25\0035\4$\0=\4%\3=\3&\0025\3'\0=\3(\0025\3)\0004\4\0\0=\4*\3=\3+\0024\3\0\0=\3,\0025\3-\0004\4\0\0=\4.\3=\3/\0025\0030\0005\0041\0=\4\25\3=\0032\0025\0033\0004\4\0\0=\0044\0035\0045\0=\0046\3=\0037\0025\0038\0=\0039\0025\3:\0=\3\"\0025\3;\0005\4<\0=\4=\0035\4>\0004\5\0\0=\0056\4=\4?\0035\4A\0005\5@\0=\5\19\4=\4B\0035\4C\0005\5D\0005\6F\0005\aE\0=\aG\0065\aH\0=\aI\6=\0066\5=\5J\4=\4K\0035\4L\0=\4M\3=\3N\0025\3O\0=\3P\0025\3Q\0=\3R\0025\3S\0005\4T\0=\4U\3=\3V\2B\0\2\1K\0\1\0\blog\ntypes\1\0\b\vconfig\1\bgit\1\bdev\1\fwatcher\1\15copy_paste\1\ball\1\fprofile\1\16diagnostics\1\1\0\2\venable\1\rtruncate\1\16live_filter\1\0\2\vprefix\15[FILTER]: \24always_show_folders\2\ntrash\1\0\2\20require_confirm\2\bcmd\14gio trash\factions\16remove_file\1\0\1\17close_window\2\14open_file\18window_picker\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\venable\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\1\0\2\17quit_on_open\1\18resize_window\2\15file_popup\1\0\0\1\0\5\nstyle\fminimal\rrelative\vcursor\bcol\3\1\brow\3\1\vborder\vshadow\15expand_all\1\0\1\25max_folder_discovery\3�\2\15change_dir\1\0\3\venable\2\23restrict_above_cwd\1\vglobal\1\1\0\1\25use_system_clipboard\2\1\0\4\venable\2\vignore\2\17show_on_dirs\2\ftimeout\3�\3\24filesystem_watchers\1\0\2\venable\2\19debounce_delay\0032\ffilters\fexclude\1\4\0\0\t.map\t.dll\a.o\vcustom\1\0\1\rdotfiles\1\16diagnostics\1\0\4\tinfo\b\fwarning\b\thint\b\nerror\b\1\0\3\venable\1\19debounce_delay\0032\17show_on_dirs\1\16system_open\targs\1\0\1\bcmd\5\23ignore_ft_on_setup\24update_focused_file\16ignore_list\1\0\2\venable\1\16update_root\1\23hijack_directories\1\0\2\venable\2\14auto_open\2\rrenderer\18special_files\1\5\0\0\15Cargo.toml\rMakefile\14README.md\14readme.md\vglyphs\bgit\1\0\a\fdeleted\b\frenamed\b➜\14untracked\b★\fignored\b◌\runmerged\b\vstaged\b✓\runstaged\b✗\vfolder\1\0\b\15arrow_open\b\topen\b\17arrow_closed\b\15empty_open\b\nempty\b\fsymlink\b\fdefault\b\17symlink_open\b\1\0\3\fdefault\b\rbookmark\b\fsymlink\b\tshow\1\0\4\tfile\2\17folder_arrow\2\vfolder\2\bgit\2\1\0\4\18git_placement\vbefore\18webdev_colors\2\18symlink_arrow\n ➛ \fpadding\6 \19indent_markers\nicons\1\0\5\titem\b│\vbottom\b─\tedge\b│\tnone\6 \vcorner\b└\1\0\2\venable\1\18inline_arrows\2\1\0\b\24symlink_destination\2\17indent_width\3\2\25root_folder_modifier\a:~\27highlight_opened_files\tnone\14full_name\1\18highlight_git\1\16group_empty\1\17add_trailing\1\tview\nfloat\20open_win_config\1\0\6\brow\3\1\rrelative\veditor\bcol\3\1\vheight\3\30\nwidth\3\30\vborder\frounded\1\0\1\venable\1\rmappings\tlist\1\0\2\vaction\15close_node\tmode\6n\1\2\0\0\6h\1\0\2\vaction\5\bkey\t<BS>\bkey\1\0\2\vaction\tedit\tmode\6n\1\2\0\0\6l\1\0\2\vaction\5\bkey\6o\1\0\1\16custom_only\1\1\0\t\25centralize_selection\1\18adaptive_size\1\15signcolumn\byes\19relativenumber\1 preserve_window_proportions\1\tside\tleft\21hide_root_folder\1\vnumber\1\nwidth\3\30\14root_dirs\29ignore_buf_on_tab_change\1\0\19\19select_prompts\1\19remove_keymaps\1\14on_attach\fdisable\20respect_buf_cwd\1\23reload_on_bufenter\1\23sync_root_with_cwd\2\24prefer_startup_root\1\fsort_by\tname\25focus_empty_on_setup\1\16open_on_tab\1\23open_on_setup_file\1\18open_on_setup\1\27ignore_buffer_on_setup\1'hijack_unnamed_buffer_when_opening\1\17hijack_netrw\2\18hijack_cursor\1\18disable_netrw\1\28create_in_closed_folder\1\25auto_reload_on_write\2\nsetup\14nvim-tree\frequire\0" },
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
  ["sqlite.lua"] = {
    load_after = {
      ["yanky.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\sqlite.lua",
    url = "https://github.com/kkharji/sqlite.lua"
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
    config = { "\27LJ\2\n�\5\0\0\6\0&\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\v\0005\4\t\0005\5\b\0=\5\n\4=\4\f\0035\4\14\0005\5\r\0=\5\n\4=\4\15\0035\4\17\0005\5\16\0=\5\n\4=\4\18\0035\4\20\0005\5\19\0=\5\n\4=\4\21\0035\4\23\0005\5\22\0=\5\n\4=\4\24\3=\3\25\0025\3\28\0005\4\27\0005\5\26\0=\5\n\4=\4\29\0035\4\31\0005\5\30\0=\5\n\0044\5\0\0=\5 \4=\4!\3=\3\"\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0#\0'\2$\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0#\0'\2!\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0#\0'\2%\0B\0\2\1K\0\1\0\17yank_history\14ui-select\19load_extension\15extensions\17file_browser\rmappings\1\0\3\nfiles\1\vhidden\2\14previewer\1\1\2\0\0\afd\14ui_select\1\0\0\1\0\0\1\2\0\0\afd\fpickers\14live_grep\1\0\1\vhidden\2\1\2\0\0\arg\16grep_string\1\0\1\vhidden\2\1\2\0\0\arg\fbuffers\1\0\2\14previewer\1\vhidden\2\1\2\0\0\afd\roldfiles\1\0\2\14previewer\1\vhidden\2\1\2\0\0\afd\15find_files\1\0\0\17find_command\1\0\2\14previewer\1\vhidden\2\1\2\0\0\afd\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\v\0\0\n%.map\n%.obj\b%.o\n%.pbi\v%.html\t%.7z\n%.zip\n%.sln\n%.eww\n%.ewp\nsetup\14telescope\frequire\0" },
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
    config = { "\27LJ\2\n�\t\0\0\6\0001\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\a\0005\4\4\0005\5\5\0=\5\6\4=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0005\5\14\0=\5\6\4=\4\15\0035\4\16\0005\5\17\0=\5\6\4=\4\18\0035\4\19\0005\5\20\0=\5\6\4=\4\21\0035\4\22\0005\5\23\0=\5\6\4=\4\24\3=\3\25\0025\3\26\0=\3\27\0025\3\28\0004\4\0\0=\4\29\3=\3\30\0025\3 \0005\4\31\0=\4!\0035\4\"\0=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4+\3=\3,\0025\3-\0005\4.\0=\4/\3=\0030\2B\0\2\1K\0\1\0\vsearch\targs\1\6\0\0\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\1\0\2\fpattern\18\\b(KEYWORDS):\fcommand\arg\vcolors\ttest\1\3\0\0\15Identifier\f#FF00FF\fdefault\1\3\0\0\15Identifier\f#7C3AED\thint\1\3\0\0\19DiagnosticHint\f#10B981\tinfo\1\3\0\0\19DiagnosticInfo\f#2563EB\fwarning\1\4\0\0\22DiagnosticWarning\15WarningMsg\f#FBBF24\nerror\1\0\0\1\4\0\0\20DiagnosticError\rErrorMsg\f#DC2626\14highlight\fexclude\1\0\t\fkeyword\twide\17max_line_len\3�\3\vbefore\5\18comments_only\2\nafter\afg\22multiline_context\3\n\22multiline_pattern\a^.\14multiline\2\fpattern\22.*<(KEYWORDS)\\s*:\14gui_style\1\0\2\abg\tBOLD\afg\tNONE\rkeywords\tTEST\1\4\0\0\fTESTING\vPASSED\vFAILED\1\0\2\ncolor\ttest\ticon\t⏲ \tNOTE\1\2\0\0\tINFO\1\0\2\ncolor\thint\ticon\t \tPERF\1\4\0\0\nOPTIM\16PERFORMANCE\rOPTIMIZE\1\0\1\ticon\t \tWARN\1\3\0\0\fWARNING\bXXX\1\0\2\ncolor\fwarning\ticon\t \tHACK\1\0\2\ticon\t \ncolor\fwarning\tTODO\1\0\2\ticon\t \ncolor\tinfo\bFIX\1\0\0\balt\1\5\0\0\nFIXME\bBUG\nFIXIT\nISSUE\1\0\2\ncolor\nerror\ticon\t \1\0\3\18sign_priority\3\b\nsigns\2\19merge_keywords\2\nsetup\18todo-comments\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    commands = { "Trouble", "TroubleToggle", "TroubleRefresh" },
    config = { "\27LJ\2\n�\5\0\0\5\0\26\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\2B\0\2\1K\0\1\0\nsigns\1\0\5\16information\b\thint\b\fwarning\b\nother\b﫠\nerror\b\14auto_jump\1\2\0\0\20lsp_definitions\16action_keys\16toggle_fold\1\3\0\0\azA\aza\15open_folds\1\3\0\0\azR\azr\16close_folds\1\3\0\0\azM\azm\15jump_close\1\2\0\0\6o\ropen_tab\1\2\0\0\n<c-t>\16open_vsplit\1\2\0\0\n<c-v>\15open_split\1\2\0\0\n<c-x>\tjump\1\3\0\0\t<cr>\n<tab>\1\0\t\frefresh\6r\nclose\6q\tnext\6j\rprevious\6k\fpreview\6p\nhover\6K\19toggle_preview\6P\16toggle_mode\6m\vcancel\n<esc>\1\0\15\nicons\2\14fold_open\b\ngroup\2\16fold_closed\b\14auto_open\1\14auto_fold\1\17auto_preview\2\15auto_close\1\17indent_lines\2\rposition\vbottom\25use_diagnostic_signs\1\tmode\26workspace_diagnostics\fpadding\2\vheight\3\15\nwidth\0032\nsetup\ftrouble\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    config = { "\27LJ\2\n�\2\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\3B\1\2\1K\0\1\0\fkeymaps\1\0\a\t<cr>\17action_enter\6q\tquit\6K\21move_change_prev\6J\21move_change_next\6k\14move_prev\6p\18enter_diffbuf\6j\14move_next\vwindow\1\0\1\rwinblend\3\30\20ignore_filetype\1\a\0\0\rUndotree\17UndotreeDiff\aqf\20TelescopePrompt\18spectre_panel\17tsplayground\1\0\2\vlayout\16left_bottom\15float_diff\2\nsetup\rundotree\frequire\0" },
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
  },
  ["yanky.nvim"] = {
    after = { "sqlite.lua" },
    config = { "\27LJ\2\n�\2\0\0\5\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\2B\0\2\1K\0\1\0\29preserve_cursor_position\1\0\1\fenabled\2\14highlight\1\0\3\von_put\2\ntimer\3�\3\fon_yank\2\21system_clipboard\1\0\1\19sync_with_ring\2\vpicker\14telescope\1\0\0\vselect\1\0\0\1\0\0\tring\1\0\0\1\0\4\19history_length\3d!sync_with_numbered_registers\2\17cancel_event\vupdate\fstorage\nshada\nsetup\nyanky\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Nateriver\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\yanky.nvim",
    url = "https://github.com/gbprod/yanky.nvim"
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
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n�\22\0\0\b\0W\0m6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0024\3\0\0=\3\5\0025\3\6\0005\4\a\0004\5\5\0005\6\b\0>\6\1\0055\6\n\0005\a\t\0=\a\v\6>\6\2\0055\6\f\0>\6\3\0055\6\14\0005\a\r\0=\a\v\6>\6\4\5=\5\15\4=\4\16\0035\4\17\0005\5\18\0=\5\19\4=\4\20\3=\3\21\0025\3\22\0005\4\23\0005\5\24\0=\5\25\4=\4\26\0035\4\27\0005\5\28\0=\5\29\0045\5\30\0005\6\31\0=\6 \0055\6!\0=\6\"\5=\5#\4=\4\25\0035\4$\0=\4%\3=\3&\0025\3'\0=\3(\0025\3)\0004\4\0\0=\4*\3=\3+\0024\3\0\0=\3,\0025\3-\0004\4\0\0=\4.\3=\3/\0025\0030\0005\0041\0=\4\25\3=\0032\0025\0033\0004\4\0\0=\0044\0035\0045\0=\0046\3=\0037\0025\0038\0=\0039\0025\3:\0=\3\"\0025\3;\0005\4<\0=\4=\0035\4>\0004\5\0\0=\0056\4=\4?\0035\4A\0005\5@\0=\5\19\4=\4B\0035\4C\0005\5D\0005\6F\0005\aE\0=\aG\0065\aH\0=\aI\6=\0066\5=\5J\4=\4K\0035\4L\0=\4M\3=\3N\0025\3O\0=\3P\0025\3Q\0=\3R\0025\3S\0005\4T\0=\4U\3=\3V\2B\0\2\1K\0\1\0\blog\ntypes\1\0\b\vconfig\1\bgit\1\bdev\1\fwatcher\1\15copy_paste\1\ball\1\fprofile\1\16diagnostics\1\1\0\2\venable\1\rtruncate\1\16live_filter\1\0\2\vprefix\15[FILTER]: \24always_show_folders\2\ntrash\1\0\2\20require_confirm\2\bcmd\14gio trash\factions\16remove_file\1\0\1\17close_window\2\14open_file\18window_picker\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\venable\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\1\0\2\17quit_on_open\1\18resize_window\2\15file_popup\1\0\0\1\0\5\nstyle\fminimal\rrelative\vcursor\bcol\3\1\brow\3\1\vborder\vshadow\15expand_all\1\0\1\25max_folder_discovery\3�\2\15change_dir\1\0\3\venable\2\23restrict_above_cwd\1\vglobal\1\1\0\1\25use_system_clipboard\2\1\0\4\venable\2\vignore\2\17show_on_dirs\2\ftimeout\3�\3\24filesystem_watchers\1\0\2\venable\2\19debounce_delay\0032\ffilters\fexclude\1\4\0\0\t.map\t.dll\a.o\vcustom\1\0\1\rdotfiles\1\16diagnostics\1\0\4\tinfo\b\fwarning\b\thint\b\nerror\b\1\0\3\venable\1\19debounce_delay\0032\17show_on_dirs\1\16system_open\targs\1\0\1\bcmd\5\23ignore_ft_on_setup\24update_focused_file\16ignore_list\1\0\2\venable\1\16update_root\1\23hijack_directories\1\0\2\venable\2\14auto_open\2\rrenderer\18special_files\1\5\0\0\15Cargo.toml\rMakefile\14README.md\14readme.md\vglyphs\bgit\1\0\a\fdeleted\b\frenamed\b➜\14untracked\b★\fignored\b◌\runmerged\b\vstaged\b✓\runstaged\b✗\vfolder\1\0\b\15arrow_open\b\topen\b\17arrow_closed\b\15empty_open\b\nempty\b\fsymlink\b\fdefault\b\17symlink_open\b\1\0\3\fdefault\b\rbookmark\b\fsymlink\b\tshow\1\0\4\tfile\2\17folder_arrow\2\vfolder\2\bgit\2\1\0\4\18git_placement\vbefore\18webdev_colors\2\18symlink_arrow\n ➛ \fpadding\6 \19indent_markers\nicons\1\0\5\titem\b│\vbottom\b─\tedge\b│\tnone\6 \vcorner\b└\1\0\2\venable\1\18inline_arrows\2\1\0\b\24symlink_destination\2\17indent_width\3\2\25root_folder_modifier\a:~\27highlight_opened_files\tnone\14full_name\1\18highlight_git\1\16group_empty\1\17add_trailing\1\tview\nfloat\20open_win_config\1\0\6\brow\3\1\rrelative\veditor\bcol\3\1\vheight\3\30\nwidth\3\30\vborder\frounded\1\0\1\venable\1\rmappings\tlist\1\0\2\vaction\15close_node\tmode\6n\1\2\0\0\6h\1\0\2\vaction\5\bkey\t<BS>\bkey\1\0\2\vaction\tedit\tmode\6n\1\2\0\0\6l\1\0\2\vaction\5\bkey\6o\1\0\1\16custom_only\1\1\0\t\25centralize_selection\1\18adaptive_size\1\15signcolumn\byes\19relativenumber\1 preserve_window_proportions\1\tside\tleft\21hide_root_folder\1\vnumber\1\nwidth\3\30\14root_dirs\29ignore_buf_on_tab_change\1\0\19\19select_prompts\1\19remove_keymaps\1\14on_attach\fdisable\20respect_buf_cwd\1\23reload_on_bufenter\1\23sync_root_with_cwd\2\24prefer_startup_root\1\fsort_by\tname\25focus_empty_on_setup\1\16open_on_tab\1\23open_on_setup_file\1\18open_on_setup\1\27ignore_buffer_on_setup\1'hijack_unnamed_buffer_when_opening\1\17hijack_netrw\2\18hijack_cursor\1\18disable_netrw\1\28create_in_closed_folder\1\25auto_reload_on_write\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\aui\1\0\0\nicons\1\0\0\1\0\3\20package_pending\b➜\22package_installed\b✓\24package_uninstalled\b✗\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: github-nvim-theme
time([[Config for github-nvim-theme]], true)
try_loadstring("\27LJ\2\n�\1\0\1\4\0\n\0\f5\1\5\0005\2\1\0009\3\0\0=\3\2\0029\3\3\0=\3\4\2=\2\6\0015\2\a\0=\2\b\0014\2\0\0=\2\t\1L\1\2\0\fTSField\19DiagnosticHint\1\0\1\tlink\30LspDiagnosticsDefaultHint\fhtmlTag\1\0\0\asp\thint\afg\1\0\2\nstyle\14underline\abg\f#282c34\bred�\2\1\0\5\0\16\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0023\3\b\0=\3\t\2B\0\2\0016\0\0\0'\2\n\0B\0\2\0029\0\2\0005\2\14\0005\3\f\0005\4\v\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\roverride\1\0\2\16color_icons\2\fdefault\2\bzsh\1\0\0\1\0\4\ncolor\f#428850\16cterm_color\a65\ticon\b\tname\bZsh\22nvim-web-devicons\14overrides\0\vcolors\1\0\2\thint\vorange\nerror\f#ff0000\rsidebars\1\5\0\0\aqf\15vista_kind\rterminal\vpacker\1\0\2\19function_style\vitalic\16theme_style\tdark\nsetup\17github-theme\frequire\0", "config", "github-nvim-theme")
time([[Config for github-nvim-theme]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'DiffviewOpen', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewOpen', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewOpen' }, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewOpen ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewClose', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewClose', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewClose' }, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewClose ', 'cmdline')
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
pcall(vim.api.nvim_create_user_command, 'TroubleRefresh', function(cmdargs)
          require('packer.load')({'trouble.nvim'}, { cmd = 'TroubleRefresh', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'trouble.nvim'}, { cmd = 'TroubleRefresh' }, _G.packer_plugins)
          return vim.fn.getcompletion('TroubleRefresh ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Trouble', function(cmdargs)
          require('packer.load')({'trouble.nvim'}, { cmd = 'Trouble', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'trouble.nvim'}, { cmd = 'Trouble' }, _G.packer_plugins)
          return vim.fn.getcompletion('Trouble ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TroubleToggle', function(cmdargs)
          require('packer.load')({'trouble.nvim'}, { cmd = 'TroubleToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'trouble.nvim'}, { cmd = 'TroubleToggle' }, _G.packer_plugins)
          return vim.fn.getcompletion('TroubleToggle ', 'cmdline')
      end})
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
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'nvim-comment', 'yanky.nvim', 'indent-blankline.nvim', 'hop.nvim', 'nvim-treesitter'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
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
