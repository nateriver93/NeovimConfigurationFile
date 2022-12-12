" 基础使用习惯配置
runtime ./vimrc.vim
" 插件管理
lua require('plugins')
" 状态栏
lua require('statusline').config()
" 自动补全
lua require('autocomplete').config()
" 启动画面
lua require('startscreen').config()
" Markdown
lua require('markdown').config()
" 启动加速
lua require('speedup').config()
" 按键映射
runtime ./maps.vim
