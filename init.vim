" 基础使用习惯配置
runtime ./vimrc.vim
" 插件管理
lua require('plugins')
" 主题
lua require('theme').config()
" 状态栏
lua require('statusline').config()
" lsp
lua require('lsp').config()
" 自动补全
lua require('autocomplete').config()
" 文件树
lua require('filetree').config()
" 函数列表
" lua require('functionlist').config()
" 高亮
lua require('highlight').config()
" 启动画面
lua require('startscreen').config()
" 文件搜索
lua require('filesearch').config()
" Markdown
lua require('markdown').config()
" 启动加速
lua require('speedup').config()
" Workspace
lua require('workspace').config()
" Comment
lua require('comment').config()
" Easymotion
lua require('easymotion').config()
" 按键映射
runtime ./maps.vim
