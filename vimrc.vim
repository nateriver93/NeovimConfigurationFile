"开启文件类型侦测
filetype on
"
"根据侦测到的不同类型加载对应的插件
filetype plugin on
"
"根据侦测到的不同类型采用不同的缩进格式
filetype indent on
"
" 开启语法高亮功能
syntax enable

" 开启语法高亮
syntax on

" 开启行号显示
set number

" 显示相对行号，便于 nj/nk 跳转
set relativenumber number

" paste模式
set pastetoggle=<F2>

" 高亮搜索
set hlsearch

" 折叠方式
set foldlevelstart=99
set foldmethod=manual

" 启动时不显示援助乌干达儿童的提示
set shortmess=atI

" 关闭 vi 一致性模式，避免以前版本的一些bug和局限
set nocompatible

" Vim 所工作的终端的字符编码方式
set termencoding=utf-8

" Vim 内部使用的字符编码方式
set encoding=utf-8

" 自适应不同语言的智能缩进
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" 自动缩进
set autoindent

" 使用 C/C++ 语言的自动缩进方式
set cindent

" C/C++ 语言的具体缩进方式
set cinoptions=g0,:0,N-s,(0

" 智能选择对齐方式
set smartindent

" <Tab> 占用空格数
set tabstop=4

" 编辑时 <Tab> 占用的空格数
set softtabstop=4

" 去掉输入错误的提示声音
set noerrorbells

" 自动缩进时步进的空格数
set shiftwidth=4

" 设置字体
"set guifont=Fira_Code_Medium:h12 

" 无名寄存器映射到系统剪贴板
set clipboard=unnamed

let mapleader=" "

" 不使用鼠标
set mouse=c

" theme
" colorscheme github_dark_default
colorscheme nightfox
cd ~

" Improve Neovim startup time by disabling python and host check
" let g:python3_host_skip_check = 1
" let g:loaded_python3_provider = 1
" let g:python3_host_prog = '$HOME/scoop/apps/python/current/python.exe'
