" Source map
nnoremap s <NOP>
"nnoremap <silent> <leader>sh :Clap history<CR>
"nnoremap <silent> <leader>ss :Clap files<CR>
"nnoremap ss yiw:Ack <C-r>"<CR>
"nnoremap st :NERDTreeToggle<CR>
"nnoremap sf :NERDTreeFind<CR>
" Motion map
"nmap mm <Plug>(easymotion-s2)

" Display map
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

" File map
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
"vmap <leader>c gc
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>
inoremap <C-d> <delete>

" Buffer map
"nnoremap <silent> <leader>b :Clap buffers<CR>
"
"Tree map
nnoremap <leader>t :NvimTreeToggle<CR>
" Project map
nnoremap <leader>p :NvimTreeOpen<CR>:Telescope fd<CR>
nnoremap <leader>f yiw:NvimTreeOpen<CR>:Telescope grep_string search=<C-r>"<CR>
nnoremap <leader>b :Telescope buffers<CR>
