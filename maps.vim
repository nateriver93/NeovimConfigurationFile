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
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>g G
nnoremap <leader>a A
nnoremap <leader>i I
nnoremap <leader>r <C-r>
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <leader>o O
nnoremap <a-i> <C-i>
nnoremap <a-o> <C-o>
nnoremap mm :HopChar2MW<CR>

nnoremap <silent> <leader>t :NvimTreeToggle<CR>
nnoremap <silent> <leader>ff :Telescope find_files<CR>
nnoremap <silent> <leader>fb :Telescope file_browser<CR>
nnoremap <silent> <leader>of :Telescope oldfiles<CR>
nnoremap <silent> <leader>f :Telescope grep_string<CR>
nnoremap <silent> <leader>b :Telescope buffers<CR>
nnoremap <silent> <leader>n :Lspsaga peek_definition<CR>
nnoremap <silent> <leader>m :Lspsaga lsp_finder<CR>
nnoremap <silent> <leader>u :LSoutlineToggle<CR>
nnoremap <silent> <leader>cd :cd %:p:h<CR>
