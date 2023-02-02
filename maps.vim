nnoremap s <NOP>

nnoremap <silent> vv V
nnoremap <silent> <a-j> 5j
nnoremap <silent> <a-k> 5k
vnoremap <silent> <a-j> 5j
vnoremap <silent> <a-k> 5k
nnoremap <silent> n nzz
nnoremap <silent> <a-n> Nzz
nnoremap <silent> <a-i> <C-i>
nnoremap <silent> <a-o> <C-o>
nnoremap <silent> <leader>w :w!<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader><leader>q :wa<CR>:qa<CR>
nnoremap <silent> <leader>r <C-r>
nnoremap <silent> <leader>o O
nnoremap <silent> <leader>x "0diwh"*p
nnoremap <silent> <leader>h gd<C-o>
nnoremap <silent> <leader><leader>h :noh<CR>
nnoremap <silent> <leader>- zfa{
nnoremap <silent> <leader>= zo
nnoremap <silent> <leader>md :MarkdownPreview<CR>
"
" f: find
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
"
" g: go to
nnoremap <silent> <leader>gg :HopChar2MW<CR>
nnoremap <silent> <leader>ga A
nnoremap <silent> <leader>gi I
nnoremap <silent> <leader>ge G
nnoremap <silent> <leader>gn :Glance references<CR>
nnoremap <silent> <leader>gl <C-w>l
nnoremap <silent> <leader>gk <C-w>k
nnoremap <silent> <leader>gh <C-w>h
nnoremap <silent> <leader>gj <C-w>j

" s: session
" session load
nnoremap <silent> <leader>sl :SessionManager load_session<CR>
" session save
nnoremap <silent> <leader>ss :SessionManager save_current_session<CR>
" session delete
nnoremap <silent> <leader>sd :SessionManager delete_session<CR>

" d: display
nnoremap <silent> <up> :res +5<CR>
nnoremap <silent> <down> :res -5<CR>
nnoremap <silent> <left> :vertical resize-5<CR>
nnoremap <silent> <right> :vertical resize+5<CR>
" display window in l key direction
nnoremap <silent> <leader>dl :set splitright<CR>:vsplit<CR>
" display window in j key direction
nnoremap <silent> <leader>dj :set splitbelow<CR>:split<CR>
" display file outline
nnoremap <silent> <leader>do :Lspsaga outline<CR>
" display project tree
nnoremap <silent> <leader>dp :NvimTreeToggle<CR>
" display undo tree
nnoremap <silent> <leader>du :lua require('undotree').toggle()<CR>

