" 基础使用习惯配置
runtime ./vimrc.vim
" 插件管理
lua require('plugins')
" 自动补全
lua require('autocomplete').config()
" 按键映射
runtime ./maps.vim
