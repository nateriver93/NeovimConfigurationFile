nnoremap s <NOP>

nnoremap <leader>l <C-w>l
nnoremap <leader>k <C-w>k
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <silent> <up> :res +5<CR>
nnoremap <silent> <down> :res -5<CR>
nnoremap <silent> <left> :vertical resize-5<CR>
nnoremap <silent> <right> :vertical resize+5<CR>
nnoremap <leader>dl :set splitright<CR>:vsplit<CR>
nnoremap <leader>dj :set splitbelow<CR>:split<CR>

nnoremap vv V
nnoremap <silent> <a-j> 5j
nnoremap <silent> <a-k> 5k
vnoremap <silent> <a-j> 5j
vnoremap <silent> <a-k> 5k
nnoremap <silent> n nzz
nnoremap <silent> <a-n> Nzz
nnoremap <a-i> <C-i>
nnoremap <a-o> <C-o>
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>g G
nnoremap <leader>a A
nnoremap <leader>i I
nnoremap <leader>r <C-r>
nnoremap <leader>o O
nnoremap <leader>x "0diwh"*p
nnoremap mm :HopChar2MW<CR>

nnoremap <silent> <leader>tt :NvimTreeToggle<CR>
nnoremap <silent> <leader>tu :lua require('undotree').toggle()<CR>
nnoremap <silent> <leader>ff :Telescope find_files<CR>
nnoremap <silent> <leader>fp :Telescope file_browser<CR>
nnoremap <silent> <leader>fo :Telescope oldfiles<CR>
nnoremap <silent> <leader>fl :Telescope live_grep<CR>
nnoremap <silent> <leader><leader>fl :Telescope live_grep search_dirs=%<CR>
nnoremap <silent> <leader>fs :Telescope grep_string<CR>
nnoremap <silent> <leader><leader>fs :Telescope grep_string search_dirs=%<CR>
nnoremap <silent> <leader>fb :Telescope buffers<CR>
nnoremap <silent> <leader>ft :TodoTelescope<CR>
nnoremap <silent> <leader>fe :TroubleToggl<CR>
nnoremap <silent> <leader>n :Lspsaga lsp_finder<CR>
nnoremap <silent> <leader>u :Lspsaga outline<CR>
nnoremap <silent> <leader>sl :SessionManager load_session<CR>
nnoremap <silent> <leader>ss :SessionManager save_current_session<CR>
nnoremap <silent> <leader>sd :SessionManager delete_session<CR>
nnoremap <silent> <leader>e :wa<CR>:qa<CR>
nnoremap <silent> <leader>- zfa{
nnoremap <silent> <leader>= zo
nnoremap <silent> <leader>md :MarkdownPreview<CR>
